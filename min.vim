" Vim syntax file
" Language: min
" Maintainer: Fabio Cevasco
" Last Change: 25 March 2017
" Version: 0.5.0

if exists("b:current_syntax")
  finish
endif

setl iskeyword=@,36-39,+,-,/,*,.,:,~,!,48-57,60-65,94-95,192-255 
setl iskeyword+=^

syntax keyword          minDefaultSymbol ! != $ & ' * + # - % ^ -> . .. / : < <= == => =~ > >= @ ROOT aes all? and any? append apply args ask atime bind bool boolean? call call! capitalize case cd chmod choose clear-stack cleave column-print concat confirm cons cp cpu crypto ctime datetime ddel debug decode define defined? delete dget dhas? dkeys dictionary? dip dir? dirname div dpick dprint dprint! dset dsort dup dvalues encode env? error eval even? exists? exit expect fappend fatal find file? filename filter first flatten float float? foreach fperms fread from-json format-error fs fsize fstats ftype fwrite get gets get-env get-stack hardlink harvest hidden? id if import in? indent indexof info insert int integer? interpolate interval io join keep last length linrec load load-symbol logic loglevel loglevel? lowercase ls ls-r map map-reduce match md5 mkdir mod module module-symbols module-sigils mtime mv newline nip not notice now num number? odd? opts os over partition password pick pop popd pred prepend print print! prompt publish puts puts! put-env q quotation? quote quote-bind quote-define random raise reduce regex reject remove remove-symbol repeat replace rest reverse rm rmdir run save-symbol scope scope? seal search seq set set-stack sha1 sha224 sha256 sha384 sha512 shorten sigils sip size sleep slice sort source split spread stack startup stored-symbols str string string? strip succ sum swap swons symbols symlink symlink? sys system take tap tap! tformat time timeinfo times timestamp titleize to-json to-timestamp try dequote uppercase unzip version warn when which while with xor zip 


syntax match            minDefaultSigil       ;\<[:@'~!?$%&$=<>#^*#+/]; contained
syntax match            minSpecialSymbols     ;[:@'~!?$%&$=<>#^*#+/]; contained
syntax match            minQuote              ;\<['];
syntax match            minQuotedBinding      ;#;
syntax match            minBinding            ;@;

syntax keyword          minCommentTodo        TODO FIXME XXX TBD contained
syntax match            minComment            /;.*$/ contains=minCommentTodo

syntax match            minNumber             ;[-+]\=\d\+\(\.\d*\)\=;
syntax keyword          minBoolean            true false
syntax region           minString             start=+"+ skip=+\\\\\|\\$"+  end=+"+  

syntax region           minSigilSymbol        start=;\<[:@'~!?$%&$=<>^*#+/]; end=;\>; contains=minDefaultSigil  
syntax region           minQuotedSymbol       start=;\<[']; end=;\>; contains=minQuote
syntax region           minBoundSymbol        start=;@; end=;\>; contains=minBinding
syntax region           minQuotedBoundSymbol  start=;#; end=;\>; contains=minQuotedBinding
syntax match            minSymbol             ;[a-zA-Z._][a-zA-Z0-9/!?+*._-]*;

syntax match            minParen              ;(\|); 



" Highlighting
hi default link         minComment            Comment
hi default link         minCommentTodo        Todo
hi default link         minString             String
hi default link         minSigilSymbol        String
hi default link         minNumber             Number
hi default link         minBoolean            Boolean
hi default link         minDefaultSymbol      Statement
hi default link         minQuote              Delimiter
hi default link         minBinding            Delimiter
hi default link         minQuotedBinding      Delimiter
hi default link         minDefaultSigil       Delimiter
hi default link         minSymbol             Identifier
hi default link         minQuotedSymbol       Special
hi default link         minBoundSymbol        Special
hi default link         minQuotedBoundSymbol  Special
hi default link         minParen              Special

let b:current_syntax = "min"

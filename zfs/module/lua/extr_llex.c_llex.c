
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_26__ {int current; int buff; } ;
struct TYPE_25__ {TYPE_2__* ts; } ;
struct TYPE_23__ {int extra; } ;
struct TYPE_24__ {TYPE_1__ tsv; } ;
typedef TYPE_2__ TString ;
typedef TYPE_3__ SemInfo ;
typedef TYPE_4__ LexState ;



 int FIRST_RESERVED ;
 int TK_CONCAT ;
 int TK_DBCOLON ;
 int TK_DOTS ;
 int TK_EOS ;
 int TK_EQ ;
 int TK_GE ;
 int TK_LE ;
 int TK_NAME ;
 int TK_NE ;
 int TK_NUMBER ;
 int TK_STRING ;
 int check_next (TYPE_4__*,char*) ;
 int currIsNewline (TYPE_4__*) ;
 int inclinenumber (TYPE_4__*) ;
 int isreserved (TYPE_2__*) ;
 int lexerror (TYPE_4__*,char*,int) ;
 int lisdigit (char) ;
 int lislalnum (char) ;
 int lislalpha (char) ;
 TYPE_2__* luaX_newstring (TYPE_4__*,int ,int ) ;
 int luaZ_buffer (int ) ;
 int luaZ_bufflen (int ) ;
 int luaZ_resetbuffer (int ) ;
 int next (TYPE_4__*) ;
 int read_long_string (TYPE_4__*,TYPE_3__*,int) ;
 int read_numeral (TYPE_4__*,TYPE_3__*) ;
 int read_string (TYPE_4__*,char,TYPE_3__*) ;
 int save_and_next (TYPE_4__*) ;
 int skip_sep (TYPE_4__*) ;

__attribute__((used)) static int llex (LexState *ls, SemInfo *seminfo) {
  luaZ_resetbuffer(ls->buff);
  for (;;) {
    switch (ls->current) {
      case '\n': case '\r': {
        inclinenumber(ls);
        break;
      }
      case ' ': case '\f': case '\t': case '\v': {
        next(ls);
        break;
      }
      case '-': {
        next(ls);
        if (ls->current != '-') return '-';

        next(ls);
        if (ls->current == '[') {
          int sep = skip_sep(ls);
          luaZ_resetbuffer(ls->buff);
          if (sep >= 0) {
            read_long_string(ls, ((void*)0), sep);
            luaZ_resetbuffer(ls->buff);
            break;
          }
        }

        while (!currIsNewline(ls) && ls->current != 128)
          next(ls);
        break;
      }
      case '[': {
        int sep = skip_sep(ls);
        if (sep >= 0) {
          read_long_string(ls, seminfo, sep);
          return TK_STRING;
        } else if (sep == -1) {
  return '[';
        } else {
  lexerror(ls, "invalid long string delimiter", TK_STRING);
  break;
 }
      }
      case '=': {
        next(ls);
        if (ls->current != '=') return '=';
        else { next(ls); return TK_EQ; }
      }
      case '<': {
        next(ls);
        if (ls->current != '=') return '<';
        else { next(ls); return TK_LE; }
      }
      case '>': {
        next(ls);
        if (ls->current != '=') return '>';
        else { next(ls); return TK_GE; }
      }
      case '~': {
        next(ls);
        if (ls->current != '=') return '~';
        else { next(ls); return TK_NE; }
      }
      case ':': {
        next(ls);
        if (ls->current != ':') return ':';
        else { next(ls); return TK_DBCOLON; }
      }
      case '"': case '\'': {
        read_string(ls, ls->current, seminfo);
        return TK_STRING;
      }
      case '.': {
        save_and_next(ls);
        if (check_next(ls, ".")) {
          if (check_next(ls, "."))
            return TK_DOTS;
          else return TK_CONCAT;
        }
        else if (!lisdigit(ls->current)) return '.';

      }

      case '0': case '1': case '2': case '3': case '4':
      case '5': case '6': case '7': case '8': case '9': {
        read_numeral(ls, seminfo);
        return TK_NUMBER;
      }
      case 128: {
        return TK_EOS;
      }
      default: {
        if (lislalpha(ls->current)) {
          TString *ts;
          do {
            save_and_next(ls);
          } while (lislalnum(ls->current));
          ts = luaX_newstring(ls, luaZ_buffer(ls->buff),
                                  luaZ_bufflen(ls->buff));
          seminfo->ts = ts;
          if (isreserved(ts))
            return ts->tsv.extra - 1 + FIRST_RESERVED;
          else {
            return TK_NAME;
          }
        }
        else {
          int c = ls->current;
          next(ls);
          return c;
        }
      }
    }
  }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int current; int buff; } ;
struct TYPE_15__ {int ts; } ;
typedef TYPE_1__ SemInfo ;
typedef TYPE_2__ LexState ;



 int TK_EOS ;
 int TK_STRING ;
 int currIsNewline (TYPE_2__*) ;
 int escerror (TYPE_2__*,int*,int,char*) ;
 int inclinenumber (TYPE_2__*) ;
 int lexerror (TYPE_2__*,char*,int ) ;
 int lisdigit (int) ;
 int lisspace (int) ;
 int luaX_newstring (TYPE_2__*,scalar_t__,scalar_t__) ;
 scalar_t__ luaZ_buffer (int ) ;
 scalar_t__ luaZ_bufflen (int ) ;
 int next (TYPE_2__*) ;
 int readdecesc (TYPE_2__*) ;
 int readhexaesc (TYPE_2__*) ;
 int save (TYPE_2__*,int) ;
 int save_and_next (TYPE_2__*) ;

__attribute__((used)) static void read_string (LexState *ls, int del, SemInfo *seminfo) {
  save_and_next(ls);
  while (ls->current != del) {
    switch (ls->current) {
      case 128:
        lexerror(ls, "unfinished string", TK_EOS);
        break;
      case '\n':
      case '\r':
        lexerror(ls, "unfinished string", TK_STRING);
        break;
      case '\\': {
        int c;
        next(ls);
        switch (ls->current) {
          case 'a': c = '\a'; goto read_save;
          case 'b': c = '\b'; goto read_save;
          case 'f': c = '\f'; goto read_save;
          case 'n': c = '\n'; goto read_save;
          case 'r': c = '\r'; goto read_save;
          case 't': c = '\t'; goto read_save;
          case 'v': c = '\v'; goto read_save;
          case 'x': c = readhexaesc(ls); goto read_save;
          case '\n': case '\r':
            inclinenumber(ls); c = '\n'; goto only_save;
          case '\\': case '\"': case '\'':
            c = ls->current; goto read_save;
          case 128: goto no_save;
          case 'z': {
            next(ls);
            while (lisspace(ls->current)) {
              if (currIsNewline(ls)) inclinenumber(ls);
              else next(ls);
            }
            goto no_save;
          }
          default: {
            if (!lisdigit(ls->current))
              escerror(ls, &ls->current, 1, "invalid escape sequence");

            c = readdecesc(ls);
            goto only_save;
          }
        }
       read_save: next(ls);
       only_save: save(ls, c);
       no_save: break;
      }
      default:
        save_and_next(ls);
    }
  }
  save_and_next(ls);
  seminfo->ts = luaX_newstring(ls, luaZ_buffer(ls->buff) + 1,
                                   luaZ_bufflen(ls->buff) - 2);
}

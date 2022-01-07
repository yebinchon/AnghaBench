
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int current; int buff; } ;
struct TYPE_13__ {int ts; } ;
typedef TYPE_1__ SemInfo ;
typedef TYPE_2__ LexState ;



 int TK_EOS ;
 scalar_t__ currIsNewline (TYPE_2__*) ;
 int inclinenumber (TYPE_2__*) ;
 int lexerror (TYPE_2__*,char*,int ) ;
 int luaX_newstring (TYPE_2__*,scalar_t__,scalar_t__) ;
 scalar_t__ luaZ_buffer (int ) ;
 scalar_t__ luaZ_bufflen (int ) ;
 int luaZ_resetbuffer (int ) ;
 int next (TYPE_2__*) ;
 int save (TYPE_2__*,char) ;
 int save_and_next (TYPE_2__*) ;
 int skip_sep (TYPE_2__*) ;

__attribute__((used)) static void read_long_string (LexState *ls, SemInfo *seminfo, int sep) {
  save_and_next(ls);
  if (currIsNewline(ls))
    inclinenumber(ls);
  for (;;) {
    switch (ls->current) {
      case 128:
        lexerror(ls, (seminfo) ? "unfinished long string" :
                                 "unfinished long comment", TK_EOS);
        break;
      case ']': {
        if (skip_sep(ls) == sep) {
          save_and_next(ls);
          goto endloop;
        }
        break;
      }
      case '\n': case '\r': {
        save(ls, '\n');
        inclinenumber(ls);
        if (!seminfo) luaZ_resetbuffer(ls->buff);
        break;
      }
      default: {
        if (seminfo) save_and_next(ls);
        else next(ls);
      }
    }
  } endloop:
  if (seminfo)
    seminfo->ts = luaX_newstring(ls, luaZ_buffer(ls->buff) + (2 + sep),
                                     luaZ_bufflen(ls->buff) - 2*(2 + sep));
}

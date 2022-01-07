
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int current; int buff; } ;
struct TYPE_9__ {int r; int i; } ;
typedef int TValue ;
typedef TYPE_1__ SemInfo ;
typedef TYPE_2__ LexState ;


 int TK_FLT ;
 int TK_INT ;
 scalar_t__ check_next2 (TYPE_2__*,char const*) ;
 int fltvalue (int *) ;
 int ivalue (int *) ;
 int lexerror (TYPE_2__*,char*,int) ;
 int lisdigit (int) ;
 scalar_t__ lisxdigit (int) ;
 scalar_t__ luaO_str2num (int ,int *) ;
 int luaZ_buffer (int ) ;
 int lua_assert (int ) ;
 int save (TYPE_2__*,char) ;
 int save_and_next (TYPE_2__*) ;
 int ttisfloat (int *) ;
 scalar_t__ ttisinteger (int *) ;

__attribute__((used)) static int read_numeral (LexState *ls, SemInfo *seminfo) {
  TValue obj;
  const char *expo = "Ee";
  int first = ls->current;
  lua_assert(lisdigit(ls->current));
  save_and_next(ls);
  if (first == '0' && check_next2(ls, "xX"))
    expo = "Pp";
  for (;;) {
    if (check_next2(ls, expo))
      check_next2(ls, "-+");
    if (lisxdigit(ls->current))
      save_and_next(ls);
    else if (ls->current == '.')
      save_and_next(ls);
    else break;
  }
  save(ls, '\0');
  if (luaO_str2num(luaZ_buffer(ls->buff), &obj) == 0)
    lexerror(ls, "malformed number", TK_FLT);
  if (ttisinteger(&obj)) {
    seminfo->i = ivalue(&obj);
    return TK_INT;
  }
  else {
    lua_assert(ttisfloat(&obj));
    seminfo->r = fltvalue(&obj);
    return TK_FLT;
  }
}

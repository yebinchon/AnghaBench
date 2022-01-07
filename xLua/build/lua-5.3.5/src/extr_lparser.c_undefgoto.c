
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int l_noret ;
struct TYPE_7__ {int line; int name; } ;
struct TYPE_6__ {int L; } ;
typedef TYPE_1__ LexState ;
typedef TYPE_2__ Labeldesc ;


 int getstr (int ) ;
 scalar_t__ isreserved (int ) ;
 char* luaO_pushfstring (int ,char const*,int ,int ) ;
 int semerror (TYPE_1__*,char const*) ;

__attribute__((used)) static l_noret undefgoto (LexState *ls, Labeldesc *gt) {
  const char *msg = isreserved(gt->name)
                    ? "<%s> at line %d not inside a loop"
                    : "no visible label '%s' for <goto> at line %d";
  msg = luaO_pushfstring(ls->L, msg, getstr(gt->name), gt->line);
  semerror(ls, msg);
}

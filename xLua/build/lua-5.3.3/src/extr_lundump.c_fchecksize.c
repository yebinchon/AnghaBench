
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int L; } ;
typedef TYPE_1__ LoadState ;


 size_t LoadByte (TYPE_1__*) ;
 int error (TYPE_1__*,int ) ;
 int luaO_pushfstring (int ,char*,char const*) ;

__attribute__((used)) static void fchecksize (LoadState *S, size_t size, const char *tname) {
  if (LoadByte(S) != size)
    error(S, luaO_pushfstring(S->L, "%s size mismatch in", tname));
}

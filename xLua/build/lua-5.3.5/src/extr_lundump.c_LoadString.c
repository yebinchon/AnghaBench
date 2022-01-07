
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_6__ {int L; } ;
typedef int TString ;
typedef TYPE_1__ LoadState ;


 size_t LUAI_MAXSHORTLEN ;
 void* LoadByte (TYPE_1__*) ;
 int LoadVar (TYPE_1__*,size_t) ;
 int LoadVector (TYPE_1__*,char*,size_t) ;
 char* getstr (int *) ;
 int * luaS_createlngstrobj (int ,size_t) ;
 int * luaS_newlstr (int ,char*,size_t) ;

__attribute__((used)) static TString *LoadString (LoadState *S) {



  size_t size = LoadByte(S);

  if (size == 0xFF)
    LoadVar(S, size);
  if (size == 0)
    return ((void*)0);
  else if (--size <= LUAI_MAXSHORTLEN) {
    char buff[LUAI_MAXSHORTLEN];
    LoadVector(S, buff, size);
    return luaS_newlstr(S->L, buff, size);
  }
  else {
    TString *ts = luaS_createlngstrobj(S->L, size);
    LoadVector(S, getstr(ts), size);
    return ts;
  }
}

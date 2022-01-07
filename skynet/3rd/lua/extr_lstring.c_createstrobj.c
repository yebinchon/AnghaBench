
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {unsigned int hash; scalar_t__ id; scalar_t__ extra; } ;
typedef TYPE_1__ TString ;
typedef int GCObject ;


 TYPE_1__* gco2ts (int *) ;
 char* getstr (TYPE_1__*) ;
 int * luaC_newobj (int *,int,size_t) ;
 size_t sizelstring (size_t) ;

__attribute__((used)) static TString *createstrobj (lua_State *L, size_t l, int tag, unsigned int h) {
  TString *ts;
  GCObject *o;
  size_t totalsize;
  totalsize = sizelstring(l);
  o = luaC_newobj(L, tag, totalsize);
  ts = gco2ts(o);
  ts->hash = h;
  ts->extra = 0;
  ts->id = 0;
  getstr(ts)[l] = '\0';
  return ts;
}

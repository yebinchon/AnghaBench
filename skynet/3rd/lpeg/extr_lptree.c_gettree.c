
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int * tree; } ;
typedef int TTree ;
typedef TYPE_1__ Pattern ;


 TYPE_1__* getpattern (int *,int) ;
 int getsize (int *,int) ;

__attribute__((used)) static TTree *gettree (lua_State *L, int idx, int *len) {
  Pattern *p = getpattern(L, idx);
  if (len)
    *len = getsize(L, idx);
  return p->tree;
}

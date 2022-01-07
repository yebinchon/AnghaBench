
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_12__ {int tag; } ;
struct TYPE_11__ {int key; int tag; } ;
typedef TYPE_1__ TTree ;







 int TChar ;
 int TFalse ;
 int TRunTime ;
 int TTrue ;
 int addtonewktable (int *,int ,int) ;
 int fillseq (TYPE_1__*,int ,size_t,char const*) ;
 int getsize (int *,int) ;
 TYPE_1__* gettree (int *,int,int*) ;
 int lua_replace (int *,int) ;
 int lua_toboolean (int *,int) ;
 int lua_tointeger (int *,int) ;
 char* lua_tolstring (int *,int,size_t*) ;
 int lua_type (int *,int) ;
 TYPE_1__* newgrammar (int *,int) ;
 TYPE_1__* newleaf (int *,int ) ;
 TYPE_1__* newtree (int *,int) ;
 TYPE_1__* numtree (int *,int) ;
 TYPE_2__* sib1 (TYPE_1__*) ;

__attribute__((used)) static TTree *getpatt (lua_State *L, int idx, int *len) {
  TTree *tree;
  switch (lua_type(L, idx)) {
    case 129: {
      size_t slen;
      const char *s = lua_tolstring(L, idx, &slen);
      if (slen == 0)
        tree = newleaf(L, TTrue);
      else {
        tree = newtree(L, 2 * (slen - 1) + 1);
        fillseq(tree, TChar, slen, s);
      }
      break;
    }
    case 130: {
      int n = lua_tointeger(L, idx);
      tree = numtree(L, n);
      break;
    }
    case 132: {
      tree = (lua_toboolean(L, idx) ? newleaf(L, TTrue) : newleaf(L, TFalse));
      break;
    }
    case 128: {
      tree = newgrammar(L, idx);
      break;
    }
    case 131: {
      tree = newtree(L, 2);
      tree->tag = TRunTime;
      tree->key = addtonewktable(L, 0, idx);
      sib1(tree)->tag = TTrue;
      break;
    }
    default: {
      return gettree(L, idx, len);
    }
  }
  lua_replace(L, idx);
  if (len)
    *len = getsize(L, idx);
  return tree;
}

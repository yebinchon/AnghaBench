
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int array; } ;
struct TYPE_9__ {int L; } ;
typedef int TValue ;
typedef scalar_t__ MSize ;
typedef TYPE_1__ LexState ;
typedef TYPE_2__ GCtab ;


 int bcread_ktabk (TYPE_1__*,int *) ;
 scalar_t__ bcread_uleb128 (TYPE_1__*) ;
 int hsize2hbits (scalar_t__) ;
 TYPE_2__* lj_tab_new (int ,scalar_t__,int ) ;
 int * lj_tab_set (int ,TYPE_2__*,int *) ;
 int lua_assert (int) ;
 int tvisnil (int *) ;
 int * tvref (int ) ;

__attribute__((used)) static GCtab *bcread_ktab(LexState *ls)
{
  MSize narray = bcread_uleb128(ls);
  MSize nhash = bcread_uleb128(ls);
  GCtab *t = lj_tab_new(ls->L, narray, hsize2hbits(nhash));
  if (narray) {
    MSize i;
    TValue *o = tvref(t->array);
    for (i = 0; i < narray; i++, o++)
      bcread_ktabk(ls, o);
  }
  if (nhash) {
    MSize i;
    for (i = 0; i < nhash; i++) {
      TValue key;
      bcread_ktabk(ls, &key);
      lua_assert(!tvisnil(&key));
      bcread_ktabk(ls, lj_tab_set(ls->L, t, &key));
    }
  }
  return t;
}

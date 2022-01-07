
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int lua_State ;
typedef int global_State ;
struct TYPE_11__ {int ok; int * pb; int * pe; scalar_t__ needsp; int * L; int cts; int * buf; } ;
struct TYPE_10__ {int len; } ;
typedef TYPE_1__ GCstr ;
typedef int CTypeID ;
typedef TYPE_2__ CTRepr ;


 int CTREPR_MAX ;
 int * G (int *) ;
 scalar_t__ LJ_UNLIKELY (int) ;
 int ctype_ctsG (int *) ;
 int ctype_prepstr (TYPE_2__*,int ,int ) ;
 int ctype_repr (TYPE_2__*,int ) ;
 TYPE_1__* lj_str_new (int *,int *,int) ;
 TYPE_1__* lj_str_newlit (int *,char*) ;
 int strdata (TYPE_1__*) ;

GCstr *lj_ctype_repr(lua_State *L, CTypeID id, GCstr *name)
{
  global_State *g = G(L);
  CTRepr ctr;
  ctr.pb = ctr.pe = &ctr.buf[CTREPR_MAX/2];
  ctr.cts = ctype_ctsG(g);
  ctr.L = L;
  ctr.ok = 1;
  ctr.needsp = 0;
  if (name) ctype_prepstr(&ctr, strdata(name), name->len);
  ctype_repr(&ctr, id);
  if (LJ_UNLIKELY(!ctr.ok)) return lj_str_newlit(L, "?");
  return lj_str_new(L, ctr.pb, ctr.pe - ctr.pb);
}

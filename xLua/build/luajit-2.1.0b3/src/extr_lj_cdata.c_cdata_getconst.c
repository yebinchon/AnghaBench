
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int lua_Number ;
typedef scalar_t__ int32_t ;
struct TYPE_5__ {int info; int size; } ;
typedef int TValue ;
typedef TYPE_1__ CType ;
typedef int CTState ;


 int CTF_UNSIGNED ;
 TYPE_1__* ctype_child (int *,TYPE_1__*) ;
 scalar_t__ ctype_isinteger (int) ;
 int lua_assert (int) ;
 int setintV (int *,scalar_t__) ;
 int setnumV (int *,int ) ;

__attribute__((used)) static void cdata_getconst(CTState *cts, TValue *o, CType *ct)
{
  CType *ctt = ctype_child(cts, ct);
  lua_assert(ctype_isinteger(ctt->info) && ctt->size <= 4);

  if ((ctt->info & CTF_UNSIGNED) && (int32_t)ct->size < 0)
    setnumV(o, (lua_Number)(uint32_t)ct->size);
  else
    setintV(o, (int32_t)ct->size);
}

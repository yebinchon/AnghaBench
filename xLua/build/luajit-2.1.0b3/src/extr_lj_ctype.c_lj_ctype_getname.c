
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {TYPE_1__* tab; scalar_t__* hash; } ;
struct TYPE_7__ {scalar_t__ next; int info; int name; } ;
typedef int GCstr ;
typedef scalar_t__ CTypeID ;
typedef TYPE_1__ CType ;
typedef TYPE_2__ CTState ;


 size_t ct_hashname (int *) ;
 TYPE_1__* ctype_get (TYPE_2__*,scalar_t__) ;
 int ctype_type (int ) ;
 scalar_t__ gcref (int ) ;
 scalar_t__ obj2gco (int *) ;

CTypeID lj_ctype_getname(CTState *cts, CType **ctp, GCstr *name, uint32_t tmask)
{
  CTypeID id = cts->hash[ct_hashname(name)];
  while (id) {
    CType *ct = ctype_get(cts, id);
    if (gcref(ct->name) == obj2gco(name) &&
 ((tmask >> ctype_type(ct->info)) & 1)) {
      *ctp = ct;
      return id;
    }
    id = ct->next;
  }
  *ctp = &cts->tab[0];
  return 0;
}

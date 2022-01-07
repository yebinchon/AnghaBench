
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_6__ {scalar_t__* hash; } ;
struct TYPE_5__ {scalar_t__ next; int name; } ;
typedef scalar_t__ CTypeID1 ;
typedef scalar_t__ CTypeID ;
typedef TYPE_1__ CType ;
typedef TYPE_2__ CTState ;


 size_t ct_hashname (int ) ;
 int gcref (int ) ;

void lj_ctype_addname(CTState *cts, CType *ct, CTypeID id)
{
  uint32_t h = ct_hashname(gcref(ct->name));
  ct->next = cts->hash[h];
  cts->hash[h] = (CTypeID1)id;
}

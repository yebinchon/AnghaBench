
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint_t ;
typedef int uint8_t ;
struct TYPE_4__ {scalar_t__ dn_type; scalar_t__ dn_bonuslen; int dn_bonustype; scalar_t__ dn_extra_slots; } ;
typedef TYPE_1__ dnode_phys_t ;
typedef int abd_t ;


 scalar_t__ DMU_OT_IS_ENCRYPTED (int ) ;
 scalar_t__ DMU_OT_NONE ;
 size_t DNODE_SHIFT ;
 int DN_BONUS (TYPE_1__*) ;
 int DN_MAX_BONUS_LEN (TYPE_1__*) ;
 int * abd_borrow_buf_copy (int *,size_t) ;
 int abd_return_buf (int *,int *,size_t) ;
 int bcopy (int ,int ,int ) ;

void
zio_crypt_copy_dnode_bonus(abd_t *src_abd, uint8_t *dst, uint_t datalen)
{
 uint_t i, max_dnp = datalen >> DNODE_SHIFT;
 uint8_t *src;
 dnode_phys_t *dnp, *sdnp, *ddnp;

 src = abd_borrow_buf_copy(src_abd, datalen);

 sdnp = (dnode_phys_t *)src;
 ddnp = (dnode_phys_t *)dst;

 for (i = 0; i < max_dnp; i += sdnp[i].dn_extra_slots + 1) {
  dnp = &sdnp[i];
  if (dnp->dn_type != DMU_OT_NONE &&
      DMU_OT_IS_ENCRYPTED(dnp->dn_bonustype) &&
      dnp->dn_bonuslen != 0) {
   bcopy(DN_BONUS(dnp), DN_BONUS(&ddnp[i]),
       DN_MAX_BONUS_LEN(dnp));
  }
 }

 abd_return_buf(src_abd, src, datalen);
}

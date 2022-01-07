
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ id; scalar_t__ has_shape; scalar_t__ has_group_alpha; scalar_t__* ctm; scalar_t__ cs; } ;
typedef TYPE_1__ tile_key ;
typedef int fz_context ;



__attribute__((used)) static int
fz_cmp_tile_key(fz_context *ctx, void *k0_, void *k1_)
{
 tile_key *k0 = k0_;
 tile_key *k1 = k1_;
 return k0->id == k1->id &&
  k0->has_shape == k1->has_shape &&
  k0->has_group_alpha == k1->has_group_alpha &&
  k0->ctm[0] == k1->ctm[0] &&
  k0->ctm[1] == k1->ctm[1] &&
  k0->ctm[2] == k1->ctm[2] &&
  k0->ctm[3] == k1->ctm[3] &&
  k0->cs == k1->cs;
}

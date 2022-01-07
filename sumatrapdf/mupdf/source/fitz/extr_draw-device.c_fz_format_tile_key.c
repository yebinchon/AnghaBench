
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int has_group_alpha; int has_shape; int cs; int * ctm; int id; } ;
typedef TYPE_1__ tile_key ;
typedef int fz_context ;


 int fz_snprintf (char*,int,char*,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
fz_format_tile_key(fz_context *ctx, char *s, int n, void *key_)
{
 tile_key *key = (tile_key *)key_;
 fz_snprintf(s, n, "(tile id=%x, ctm=%g %g %g %g, cs=%x, shape=%d, ga=%d)",
   key->id, key->ctm[0], key->ctm[1], key->ctm[2], key->ctm[3], key->cs,
   key->has_shape, key->has_group_alpha);
}

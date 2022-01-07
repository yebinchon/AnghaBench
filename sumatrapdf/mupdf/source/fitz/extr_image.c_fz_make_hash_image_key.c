
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int r; int i; int ptr; } ;
struct TYPE_7__ {TYPE_1__ pir; } ;
struct TYPE_8__ {TYPE_2__ u; } ;
typedef TYPE_3__ fz_store_hash ;
struct TYPE_9__ {int rect; int l2factor; int image; } ;
typedef TYPE_4__ fz_image_key ;
typedef int fz_context ;



__attribute__((used)) static int
fz_make_hash_image_key(fz_context *ctx, fz_store_hash *hash, void *key_)
{
 fz_image_key *key = (fz_image_key *)key_;
 hash->u.pir.ptr = key->image;
 hash->u.pir.i = key->l2factor;
 hash->u.pir.r = key->rect;
 return 1;
}

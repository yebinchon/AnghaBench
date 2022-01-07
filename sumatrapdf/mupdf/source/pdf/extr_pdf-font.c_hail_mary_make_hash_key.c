
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * ptr; scalar_t__ i; } ;
struct TYPE_6__ {TYPE_1__ pi; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
typedef TYPE_3__ fz_store_hash ;
typedef int fz_context ;



__attribute__((used)) static int
hail_mary_make_hash_key(fz_context *ctx, fz_store_hash *hash, void *key_)
{
 hash->u.pi.i = 0;
 hash->u.pi.ptr = ((void*)0);
 return 1;
}

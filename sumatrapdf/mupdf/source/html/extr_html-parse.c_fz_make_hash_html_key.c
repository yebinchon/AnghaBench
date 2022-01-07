
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int i; int ptr; } ;
struct TYPE_7__ {TYPE_1__ pi; } ;
struct TYPE_8__ {TYPE_2__ u; } ;
typedef TYPE_3__ fz_store_hash ;
struct TYPE_9__ {int chapter_num; int doc; } ;
typedef TYPE_4__ fz_html_key ;
typedef int fz_context ;



__attribute__((used)) static int
fz_make_hash_html_key(fz_context *ctx, fz_store_hash *hash, void *key_)
{
 fz_html_key *key = (fz_html_key *)key_;
 hash->u.pi.ptr = key->doc;
 hash->u.pi.i = key->chapter_num;
 return 1;
}

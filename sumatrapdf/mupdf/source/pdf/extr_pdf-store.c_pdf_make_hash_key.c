
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_5__ {int ptr; int i; } ;
struct TYPE_6__ {TYPE_1__ pi; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
typedef TYPE_3__ fz_store_hash ;
typedef int fz_context ;


 int pdf_get_indirect_document (int *,int *) ;
 int pdf_is_indirect (int *,int *) ;
 int pdf_to_num (int *,int *) ;

__attribute__((used)) static int
pdf_make_hash_key(fz_context *ctx, fz_store_hash *hash, void *key_)
{
 pdf_obj *key = (pdf_obj *)key_;

 if (!pdf_is_indirect(ctx, key))
  return 0;
 hash->u.pi.i = pdf_to_num(ctx, key);
 hash->u.pi.ptr = pdf_get_indirect_document(ctx, key);
 return 1;
}

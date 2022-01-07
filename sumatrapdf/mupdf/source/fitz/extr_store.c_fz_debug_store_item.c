
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ size; TYPE_2__* val; int key; TYPE_1__* type; } ;
typedef TYPE_3__ fz_item ;
typedef int fz_context ;
struct TYPE_5__ {int refs; } ;
struct TYPE_4__ {int (* format_key ) (int *,char*,int,int ) ;} ;


 int FZ_LOCK_ALLOC ;
 int fz_lock (int *,int ) ;
 int fz_unlock (int *,int ) ;
 int printf (char*,...) ;
 int stub1 (int *,char*,int,int ) ;

__attribute__((used)) static void
fz_debug_store_item(fz_context *ctx, void *state, void *key_, int keylen, void *item_)
{
 unsigned char *key = key_;
 fz_item *item = item_;
 int i;
 char buf[256];
 fz_unlock(ctx, FZ_LOCK_ALLOC);
 item->type->format_key(ctx, buf, sizeof buf, item->key);
 fz_lock(ctx, FZ_LOCK_ALLOC);
 printf("hash[");
 for (i=0; i < keylen; ++i)
  printf("%02x", key[i]);
 printf("][refs=%d][size=%d] key=%s val=%p\n", item->val->refs, (int)item->size, buf, (void *)item->val);
}

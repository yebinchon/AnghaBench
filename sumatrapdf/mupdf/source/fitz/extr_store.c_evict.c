
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_10__ ;


struct TYPE_26__ {int (* drop ) (TYPE_7__*,TYPE_10__*) ;int * member_0; } ;
typedef TYPE_4__ fz_store_hash ;
struct TYPE_27__ {int hash; TYPE_2__* head; TYPE_1__* tail; int size; } ;
typedef TYPE_5__ fz_store ;
struct TYPE_28__ {int key; TYPE_3__* type; TYPE_10__* val; TYPE_2__* next; TYPE_1__* prev; scalar_t__ size; } ;
typedef TYPE_6__ fz_item ;
struct TYPE_29__ {TYPE_5__* store; } ;
typedef TYPE_7__ fz_context ;
struct TYPE_25__ {int (* drop_key ) (TYPE_7__*,int ) ;scalar_t__ (* make_hash_key ) (TYPE_7__*,TYPE_4__*,int ) ;} ;
struct TYPE_24__ {TYPE_1__* prev; } ;
struct TYPE_23__ {TYPE_2__* next; } ;
struct TYPE_22__ {scalar_t__ refs; int (* drop ) (TYPE_7__*,TYPE_10__*) ;} ;


 int FZ_LOCK_ALLOC ;
 int Memento_dropRef (TYPE_10__*) ;
 int fz_free (TYPE_7__*,TYPE_6__*) ;
 int fz_hash_remove (TYPE_7__*,int ,TYPE_4__*) ;
 int fz_lock (TYPE_7__*,int ) ;
 int fz_unlock (TYPE_7__*,int ) ;
 scalar_t__ stub1 (TYPE_7__*,TYPE_4__*,int ) ;
 int stub2 (TYPE_7__*,TYPE_10__*) ;
 int stub3 (TYPE_7__*,int ) ;

__attribute__((used)) static void
evict(fz_context *ctx, fz_item *item)
{
 fz_store *store = ctx->store;
 int drop;

 store->size -= item->size;

 if (item->next)
  item->next->prev = item->prev;
 else
  store->tail = item->prev;
 if (item->prev)
  item->prev->next = item->next;
 else
  store->head = item->next;


 if (item->val->refs > 0)
  (void)Memento_dropRef(item->val);
 drop = (item->val->refs > 0 && --item->val->refs == 0);


 if (item->type->make_hash_key)
 {
  fz_store_hash hash = { ((void*)0) };
  hash.drop = item->val->drop;
  if (item->type->make_hash_key(ctx, &hash, item->key))
   fz_hash_remove(ctx, store->hash, &hash);
 }
 fz_unlock(ctx, FZ_LOCK_ALLOC);
 if (drop)
  item->val->drop(ctx, item->val);


 item->type->drop_key(ctx, item->key);
 fz_free(ctx, item);
 fz_lock(ctx, FZ_LOCK_ALLOC);
}

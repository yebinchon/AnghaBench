
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_21__ {int (* drop ) (TYPE_5__*,TYPE_8__*) ;int * member_0; } ;
typedef TYPE_2__ fz_store_hash ;
struct TYPE_22__ {int hash; TYPE_4__* head; TYPE_4__* tail; int size; scalar_t__ needs_reaping; } ;
typedef TYPE_3__ fz_store ;
struct TYPE_23__ {int key; TYPE_1__* type; TYPE_8__* val; struct TYPE_23__* prev; struct TYPE_23__* next; scalar_t__ size; } ;
typedef TYPE_4__ fz_item ;
struct TYPE_24__ {TYPE_3__* store; } ;
typedef TYPE_5__ fz_context ;
struct TYPE_25__ {scalar_t__ refs; int (* drop ) (TYPE_5__*,TYPE_8__*) ;} ;
struct TYPE_20__ {scalar_t__ (* needs_reap ) (TYPE_5__*,int ) ;int (* drop_key ) (TYPE_5__*,int ) ;scalar_t__ (* make_hash_key ) (TYPE_5__*,TYPE_2__*,int ) ;} ;


 int FZ_LOCK_ALLOC ;
 int Memento_dropRef (TYPE_8__*) ;
 int fz_assert_lock_held (TYPE_5__*,int ) ;
 int fz_free (TYPE_5__*,TYPE_4__*) ;
 int fz_hash_remove (TYPE_5__*,int ,TYPE_2__*) ;
 int fz_unlock (TYPE_5__*,int ) ;
 scalar_t__ stub1 (TYPE_5__*,int ) ;
 scalar_t__ stub2 (TYPE_5__*,TYPE_2__*,int ) ;
 int stub3 (TYPE_5__*,TYPE_8__*) ;
 int stub4 (TYPE_5__*,int ) ;

__attribute__((used)) static void
do_reap(fz_context *ctx)
{
 fz_store *store = ctx->store;
 fz_item *item, *prev, *remove;

 if (store == ((void*)0))
 {
  fz_unlock(ctx, FZ_LOCK_ALLOC);
  return;
 }

 fz_assert_lock_held(ctx, FZ_LOCK_ALLOC);

 ctx->store->needs_reaping = 0;


 remove = ((void*)0);
 for (item = store->tail; item; item = prev)
 {
  prev = item->prev;

  if (item->type->needs_reap == ((void*)0) || item->type->needs_reap(ctx, item->key) == 0)
   continue;


  store->size -= item->size;


  if (item->next)
   item->next->prev = item->prev;
  else
   store->tail = item->prev;
  if (item->prev)
   item->prev->next = item->next;
  else
   store->head = item->next;


  if (item->type->make_hash_key)
  {
   fz_store_hash hash = { ((void*)0) };
   hash.drop = item->val->drop;
   if (item->type->make_hash_key(ctx, &hash, item->key))
    fz_hash_remove(ctx, store->hash, &hash);
  }


  if (item->val->refs > 0)
   (void)Memento_dropRef(item->val);
  item->prev = (item->val->refs > 0 && --item->val->refs == 0) ? item : ((void*)0);


  item->next = remove;
  remove = item;
 }
 fz_unlock(ctx, FZ_LOCK_ALLOC);


 for (item = remove; item != ((void*)0); item = remove)
 {
  remove = item->next;


  if (item->prev)
   item->val->drop(ctx, item->val);


  item->type->drop_key(ctx, item->key);
  fz_free(ctx, item);
 }
}

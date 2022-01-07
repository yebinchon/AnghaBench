
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int size; int load; scalar_t__ lock; TYPE_2__* ents; } ;
typedef TYPE_1__ fz_hash_table ;
struct TYPE_9__ {scalar_t__ val; int key; } ;
typedef TYPE_2__ fz_hash_entry ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 scalar_t__ FZ_LOCK_ALLOC ;
 int do_hash_insert (int *,TYPE_1__*,int ,scalar_t__) ;
 int fz_free (int *,TYPE_2__*) ;
 int fz_lock (int *,scalar_t__) ;
 TYPE_2__* fz_malloc_no_throw (int *,int) ;
 int fz_throw (int *,int ,char*,int) ;
 int fz_unlock (int *,scalar_t__) ;
 int fz_warn (int *,char*) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void
fz_resize_hash(fz_context *ctx, fz_hash_table *table, int newsize)
{
 fz_hash_entry *oldents = table->ents;
 fz_hash_entry *newents;
 int oldsize = table->size;
 int oldload = table->load;
 int i;

 if (newsize < oldload * 8 / 10)
 {
  fz_warn(ctx, "assert: resize hash too small");
  return;
 }

 if (table->lock == FZ_LOCK_ALLOC)
  fz_unlock(ctx, table->lock);
 newents = fz_malloc_no_throw(ctx, newsize * sizeof (fz_hash_entry));
 if (table->lock == FZ_LOCK_ALLOC)
  fz_lock(ctx, table->lock);
 if (table->lock >= 0)
 {
  if (table->size >= newsize)
  {

   if (table->lock == FZ_LOCK_ALLOC)
    fz_unlock(ctx, table->lock);
   fz_free(ctx, newents);
   if (table->lock == FZ_LOCK_ALLOC)
    fz_lock(ctx, table->lock);
   return;
  }
 }
 if (newents == ((void*)0))
  fz_throw(ctx, FZ_ERROR_GENERIC, "hash table resize failed; out of memory (%d entries)", newsize);
 table->ents = newents;
 memset(table->ents, 0, sizeof(fz_hash_entry) * newsize);
 table->size = newsize;
 table->load = 0;

 for (i = 0; i < oldsize; i++)
 {
  if (oldents[i].val)
  {
   do_hash_insert(ctx, table, oldents[i].key, oldents[i].val);
  }
 }

 if (table->lock == FZ_LOCK_ALLOC)
  fz_unlock(ctx, table->lock);
 fz_free(ctx, oldents);
 if (table->lock == FZ_LOCK_ALLOC)
  fz_lock(ctx, table->lock);
}

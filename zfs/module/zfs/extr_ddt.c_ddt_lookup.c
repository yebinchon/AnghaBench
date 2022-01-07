
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef enum ddt_type { ____Placeholder_ddt_type } ddt_type ;
typedef enum ddt_class { ____Placeholder_ddt_class } ddt_class ;
struct TYPE_15__ {int ddt_lock; int ddt_tree; } ;
typedef TYPE_1__ ddt_t ;
struct TYPE_16__ {scalar_t__ dde_loading; scalar_t__ dde_loaded; int dde_type; int dde_class; int dde_cv; int dde_key; } ;
typedef TYPE_2__ ddt_entry_t ;
typedef int boolean_t ;
typedef int blkptr_t ;
typedef int avl_index_t ;


 int ASSERT (int) ;
 int ASSERT0 (int) ;
 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int DDT_CLASSES ;
 int DDT_TYPES ;
 int ENOENT ;
 int MUTEX_HELD (int *) ;
 TYPE_2__* avl_find (int *,TYPE_2__*,int *) ;
 int avl_insert (int *,TYPE_2__*,int ) ;
 int cv_broadcast (int *) ;
 int cv_wait (int *,int *) ;
 TYPE_2__* ddt_alloc (int *) ;
 int ddt_enter (TYPE_1__*) ;
 int ddt_exit (TYPE_1__*) ;
 int ddt_key_fill (int *,int const*) ;
 int ddt_object_lookup (TYPE_1__*,int,int,TYPE_2__*) ;
 int ddt_stat_update (TYPE_1__*,TYPE_2__*,unsigned long long) ;

ddt_entry_t *
ddt_lookup(ddt_t *ddt, const blkptr_t *bp, boolean_t add)
{
 ddt_entry_t *dde, dde_search;
 enum ddt_type type;
 enum ddt_class class;
 avl_index_t where;
 int error;

 ASSERT(MUTEX_HELD(&ddt->ddt_lock));

 ddt_key_fill(&dde_search.dde_key, bp);

 dde = avl_find(&ddt->ddt_tree, &dde_search, &where);
 if (dde == ((void*)0)) {
  if (!add)
   return (((void*)0));
  dde = ddt_alloc(&dde_search.dde_key);
  avl_insert(&ddt->ddt_tree, dde, where);
 }

 while (dde->dde_loading)
  cv_wait(&dde->dde_cv, &ddt->ddt_lock);

 if (dde->dde_loaded)
  return (dde);

 dde->dde_loading = B_TRUE;

 ddt_exit(ddt);

 error = ENOENT;

 for (type = 0; type < DDT_TYPES; type++) {
  for (class = 0; class < DDT_CLASSES; class++) {
   error = ddt_object_lookup(ddt, type, class, dde);
   if (error != ENOENT) {
    ASSERT0(error);
    break;
   }
  }
  if (error != ENOENT)
   break;
 }

 ddt_enter(ddt);

 ASSERT(dde->dde_loaded == B_FALSE);
 ASSERT(dde->dde_loading == B_TRUE);

 dde->dde_type = type;
 dde->dde_class = class;
 dde->dde_loaded = B_TRUE;
 dde->dde_loading = B_FALSE;

 if (error == 0)
  ddt_stat_update(ddt, dde, -1ULL);

 cv_broadcast(&dde->dde_cv);

 return (dde);
}

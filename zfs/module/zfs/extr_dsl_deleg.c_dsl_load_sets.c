
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zap_cursor_t ;
struct TYPE_8__ {int za_name; } ;
typedef TYPE_1__ zap_attribute_t ;
typedef int uint64_t ;
struct TYPE_9__ {int p_matched; int p_setname; } ;
typedef TYPE_2__ perm_set_t ;
typedef int objset_t ;
typedef int avl_tree_t ;
typedef int avl_index_t ;


 int B_FALSE ;
 int KM_SLEEP ;
 int ZFS_MAX_DELEG_NAME ;
 int * avl_find (int *,TYPE_2__*,int *) ;
 int avl_insert (int *,TYPE_2__*,int ) ;
 TYPE_2__* kmem_alloc (int,int ) ;
 int kmem_free (TYPE_2__*,int) ;
 int strlcpy (int ,int ,int) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init (int *,int *,int ) ;
 scalar_t__ zap_cursor_retrieve (int *,TYPE_1__*) ;
 int zap_lookup (int *,int ,char*,int,int,int *) ;
 int zfs_deleg_whokey (char*,char,char,void*) ;

__attribute__((used)) static int
dsl_load_sets(objset_t *mos, uint64_t zapobj,
    char type, char checkflag, void *valp, avl_tree_t *avl)
{
 zap_cursor_t zc;
 zap_attribute_t za;
 perm_set_t *permnode;
 avl_index_t idx;
 uint64_t jumpobj;
 int error;
 char whokey[ZFS_MAX_DELEG_NAME];

 zfs_deleg_whokey(whokey, type, checkflag, valp);

 error = zap_lookup(mos, zapobj, whokey, 8, 1, &jumpobj);
 if (error != 0)
  return (error);

 for (zap_cursor_init(&zc, mos, jumpobj);
     zap_cursor_retrieve(&zc, &za) == 0;
     zap_cursor_advance(&zc)) {
  permnode = kmem_alloc(sizeof (perm_set_t), KM_SLEEP);
  (void) strlcpy(permnode->p_setname, za.za_name,
      sizeof (permnode->p_setname));
  permnode->p_matched = B_FALSE;

  if (avl_find(avl, permnode, &idx) == ((void*)0)) {
   avl_insert(avl, permnode, idx);
  } else {
   kmem_free(permnode, sizeof (perm_set_t));
  }
 }
 zap_cursor_fini(&zc);
 return (0);
}

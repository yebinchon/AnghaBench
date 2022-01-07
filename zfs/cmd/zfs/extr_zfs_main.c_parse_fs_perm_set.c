
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uu_avl_index_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int fs_perm_t ;
struct TYPE_8__ {int fsps_list; int fsps_list_pool; } ;
typedef TYPE_1__ fs_perm_set_t ;
struct TYPE_9__ {int fspn_list_node; int fspn_fsperm; } ;
typedef TYPE_2__ fs_perm_node_t ;
typedef scalar_t__ data_type_t ;


 scalar_t__ DATA_TYPE_NVLIST ;
 int VERIFY (int) ;
 int fs_perm_init (int *,TYPE_1__*,char const*) ;
 int nomem () ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 scalar_t__ nvpair_type (int *) ;
 scalar_t__ nvpair_value_nvlist (int *,int **) ;
 int parse_fs_perm (int *,int *) ;
 TYPE_2__* safe_malloc (int) ;
 int uu_list_insert (int ,TYPE_2__*,int ) ;
 int uu_list_node_init (TYPE_2__*,int *,int ) ;
 int uu_list_numnodes (int ) ;

__attribute__((used)) static inline int
parse_fs_perm_set(fs_perm_set_t *fspset, nvlist_t *nvl)
{
 nvpair_t *nvp = ((void*)0);
 uu_avl_index_t idx = 0;

 while ((nvp = nvlist_next_nvpair(nvl, nvp)) != ((void*)0)) {
  nvlist_t *nvl2 = ((void*)0);
  const char *fsname = nvpair_name(nvp);
  data_type_t type = nvpair_type(nvp);
  fs_perm_t *fsperm = ((void*)0);
  fs_perm_node_t *node = safe_malloc(sizeof (fs_perm_node_t));
  if (node == ((void*)0))
   nomem();

  fsperm = &node->fspn_fsperm;

  VERIFY(DATA_TYPE_NVLIST == type);

  uu_list_node_init(node, &node->fspn_list_node,
      fspset->fsps_list_pool);

  idx = uu_list_numnodes(fspset->fsps_list);
  fs_perm_init(fsperm, fspset, fsname);

  if (nvpair_value_nvlist(nvp, &nvl2) != 0)
   return (-1);

  (void) parse_fs_perm(fsperm, nvl2);

  uu_list_insert(fspset->fsps_list, node, idx);
 }

 return (0);
}

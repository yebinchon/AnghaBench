
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {char* rn_name; int rn_vdev_guid; } ;
typedef TYPE_1__ rdsk_node_t ;


 int TREE_CMP (int ,int ) ;
 int TREE_ISIGN (int ) ;
 int strcmp (char const*,char const*) ;

int
slice_cache_compare(const void *arg1, const void *arg2)
{
 const char *nm1 = ((rdsk_node_t *)arg1)->rn_name;
 const char *nm2 = ((rdsk_node_t *)arg2)->rn_name;
 uint64_t guid1 = ((rdsk_node_t *)arg1)->rn_vdev_guid;
 uint64_t guid2 = ((rdsk_node_t *)arg2)->rn_vdev_guid;
 int rv;

 rv = TREE_ISIGN(strcmp(nm1, nm2));
 if (rv)
  return (rv);

 return (TREE_CMP(guid1, guid2));
}

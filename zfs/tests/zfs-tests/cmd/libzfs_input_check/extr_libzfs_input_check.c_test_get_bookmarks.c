
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int IOC_INPUT_TEST_WILD (int ,char const*,int *,int *,int ) ;
 int ZFS_IOC_GET_BOOKMARKS ;
 int fnvlist_add_boolean (int *,char*) ;
 int * fnvlist_alloc () ;
 int nvlist_free (int *) ;

__attribute__((used)) static void
test_get_bookmarks(const char *dataset)
{
 nvlist_t *optional = fnvlist_alloc();

 fnvlist_add_boolean(optional, "guid");
 fnvlist_add_boolean(optional, "createtxg");
 fnvlist_add_boolean(optional, "creation");

 IOC_INPUT_TEST_WILD(ZFS_IOC_GET_BOOKMARKS, dataset, ((void*)0), optional, 0);

 nvlist_free(optional);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int IOC_INPUT_TEST_WILD (int ,char const*,int *,int *,int ) ;
 int ZFS_IOC_DESTROY_BOOKMARKS ;
 int fnvlist_add_boolean (int *,char const*) ;
 int * fnvlist_alloc () ;
 int nvlist_free (int *) ;

__attribute__((used)) static void
test_destroy_bookmarks(const char *pool, const char *bookmark)
{
 nvlist_t *required = fnvlist_alloc();

 fnvlist_add_boolean(required, bookmark);

 IOC_INPUT_TEST_WILD(ZFS_IOC_DESTROY_BOOKMARKS, pool, required, ((void*)0), 0);

 nvlist_free(required);
}

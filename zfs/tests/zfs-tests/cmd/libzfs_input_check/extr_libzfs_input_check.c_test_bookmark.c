
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int IOC_INPUT_TEST_WILD (int ,char const*,int *,int *,int ) ;
 int ZFS_IOC_BOOKMARK ;
 int fnvlist_add_string (int *,char const*,char const*) ;
 int * fnvlist_alloc () ;
 int nvlist_free (int *) ;

__attribute__((used)) static void
test_bookmark(const char *pool, const char *snapshot, const char *bookmark)
{
 nvlist_t *required = fnvlist_alloc();

 fnvlist_add_string(required, bookmark, snapshot);

 IOC_INPUT_TEST_WILD(ZFS_IOC_BOOKMARK, pool, required, ((void*)0), 0);

 nvlist_free(required);
}

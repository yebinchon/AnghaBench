
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IOC_INPUT_TEST (int ,char const*,int *,int *,int ) ;
 int ZFS_IOC_GET_BOOKMARK_PROPS ;

__attribute__((used)) static void
test_get_bookmark_props(const char *bookmark)
{
 IOC_INPUT_TEST(ZFS_IOC_GET_BOOKMARK_PROPS, bookmark, ((void*)0), ((void*)0), 0);
}

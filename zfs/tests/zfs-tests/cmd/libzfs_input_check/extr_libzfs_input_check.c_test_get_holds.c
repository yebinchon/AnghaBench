
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IOC_INPUT_TEST (int ,char const*,int *,int *,int ) ;
 int ZFS_IOC_GET_HOLDS ;

__attribute__((used)) static void
test_get_holds(const char *snapshot)
{
 IOC_INPUT_TEST(ZFS_IOC_GET_HOLDS, snapshot, ((void*)0), ((void*)0), 0);
}

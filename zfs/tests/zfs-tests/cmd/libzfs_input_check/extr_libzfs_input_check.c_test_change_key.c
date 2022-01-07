
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int IOC_INPUT_TEST (int ,char const*,int *,int *,int ) ;
 int ZFS_IOC_CHANGE_KEY ;

__attribute__((used)) static void
test_change_key(const char *dataset)
{
 IOC_INPUT_TEST(ZFS_IOC_CHANGE_KEY, dataset, ((void*)0), ((void*)0), EINVAL);
}

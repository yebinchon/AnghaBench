
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IOC_INPUT_TEST (int ,char const*,int *,int *,int ) ;
 int ZFS_IOC_REMAP ;

__attribute__((used)) static void
test_remap(const char *dataset)
{
 IOC_INPUT_TEST(ZFS_IOC_REMAP, dataset, ((void*)0), ((void*)0), 0);
}

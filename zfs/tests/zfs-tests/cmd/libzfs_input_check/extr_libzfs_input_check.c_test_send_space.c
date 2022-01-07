
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int IOC_INPUT_TEST (int ,char const*,int *,int *,int ) ;
 int ZFS_IOC_SEND_SPACE ;
 int fnvlist_add_boolean (int *,char*) ;
 int fnvlist_add_string (int *,char*,char const*) ;
 int * fnvlist_alloc () ;
 int nvlist_free (int *) ;

__attribute__((used)) static void
test_send_space(const char *snapshot1, const char *snapshot2)
{
 nvlist_t *optional = fnvlist_alloc();

 fnvlist_add_string(optional, "from", snapshot1);
 fnvlist_add_boolean(optional, "largeblockok");
 fnvlist_add_boolean(optional, "embedok");
 fnvlist_add_boolean(optional, "compressok");
 fnvlist_add_boolean(optional, "rawok");

 IOC_INPUT_TEST(ZFS_IOC_SEND_SPACE, snapshot2, ((void*)0), optional, 0);

 nvlist_free(optional);
}

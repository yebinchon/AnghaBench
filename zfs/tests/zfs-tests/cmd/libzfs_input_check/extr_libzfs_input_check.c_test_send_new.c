
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int IOC_INPUT_TEST (int ,char const*,int *,int *,int ) ;
 int ZFS_IOC_SEND_NEW ;
 int fnvlist_add_boolean (int *,char*) ;
 int fnvlist_add_int32 (int *,char*,int) ;
 int fnvlist_add_string (int *,char*,int ) ;
 int fnvlist_add_uint64 (int *,char*,int ) ;
 int * fnvlist_alloc () ;
 int from ;
 int nvlist_free (int *) ;
 int offset ;
 int resumeobj ;

__attribute__((used)) static void
test_send_new(const char *snapshot, int fd)
{
 nvlist_t *required = fnvlist_alloc();
 nvlist_t *optional = fnvlist_alloc();

 fnvlist_add_int32(required, "fd", fd);

 fnvlist_add_boolean(optional, "largeblockok");
 fnvlist_add_boolean(optional, "embedok");
 fnvlist_add_boolean(optional, "compressok");
 fnvlist_add_boolean(optional, "rawok");
 IOC_INPUT_TEST(ZFS_IOC_SEND_NEW, snapshot, required, optional, 0);

 nvlist_free(optional);
 nvlist_free(required);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int MAX_SERDLEN ;
 int snprintf (char*,int ,char*,unsigned long long,unsigned long long,char const*) ;

__attribute__((used)) static void
zfs_serd_name(char *buf, uint64_t pool_guid, uint64_t vdev_guid,
    const char *type)
{
 (void) snprintf(buf, MAX_SERDLEN, "zfs_%llx_%llx_%s",
     (long long unsigned int)pool_guid,
     (long long unsigned int)vdev_guid, type);
}

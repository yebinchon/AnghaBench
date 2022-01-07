
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VersionOSInfo ;


 int memset (int *,int ,int) ;

bool
ts_version_get_os_info(VersionOSInfo *info)
{
 memset(info, 0, sizeof(VersionOSInfo));
 return 0;
}

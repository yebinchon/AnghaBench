
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int sync_time; int sync_date; int modification_time; int hit_rate; int expire_time; int expire_date; int exempt_delta; int cache_entry_type; int access_time; } ;
typedef TYPE_2__ entry_url ;
struct TYPE_6__ {int dwExemptDelta; } ;
struct TYPE_8__ {int LastAccessTime; int LastModifiedTime; int dwHitRate; int ExpireTime; TYPE_1__ u; int CacheEntryType; } ;
typedef TYPE_3__ INTERNET_CACHE_ENTRY_INFOA ;
typedef int DWORD ;


 int CACHE_ENTRY_ACCTIME_FC ;
 int CACHE_ENTRY_ATTRIBUTE_FC ;
 int CACHE_ENTRY_EXEMPT_DELTA_FC ;
 int CACHE_ENTRY_EXPTIME_FC ;
 int CACHE_ENTRY_HEADERINFO_FC ;
 int CACHE_ENTRY_HITRATE_FC ;
 int CACHE_ENTRY_MODTIME_FC ;
 int CACHE_ENTRY_SYNCTIME_FC ;
 int ERROR_SUCCESS ;
 int FIXME (char*) ;
 int file_time_to_dos_date_time (int *,int *,int *) ;

__attribute__((used)) static DWORD urlcache_set_entry_info(entry_url *url_entry, const INTERNET_CACHE_ENTRY_INFOA *entry_info, DWORD field_control)
{
    if (field_control & CACHE_ENTRY_ACCTIME_FC)
        url_entry->access_time = entry_info->LastAccessTime;
    if (field_control & CACHE_ENTRY_ATTRIBUTE_FC)
        url_entry->cache_entry_type = entry_info->CacheEntryType;
    if (field_control & CACHE_ENTRY_EXEMPT_DELTA_FC)
        url_entry->exempt_delta = entry_info->u.dwExemptDelta;
    if (field_control & CACHE_ENTRY_EXPTIME_FC)
        file_time_to_dos_date_time(&entry_info->ExpireTime, &url_entry->expire_date, &url_entry->expire_time);
    if (field_control & CACHE_ENTRY_HEADERINFO_FC)
        FIXME("CACHE_ENTRY_HEADERINFO_FC unimplemented\n");
    if (field_control & CACHE_ENTRY_HITRATE_FC)
        url_entry->hit_rate = entry_info->dwHitRate;
    if (field_control & CACHE_ENTRY_MODTIME_FC)
        url_entry->modification_time = entry_info->LastModifiedTime;
    if (field_control & CACHE_ENTRY_SYNCTIME_FC)
        file_time_to_dos_date_time(&entry_info->LastAccessTime, &url_entry->sync_date, &url_entry->sync_time);

    return ERROR_SUCCESS;
}

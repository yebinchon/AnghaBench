
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct hash_entry {int key; } ;
struct TYPE_9__ {int dwHighDateTime; int dwLowDateTime; } ;
struct TYPE_10__ {scalar_t__ use_count; TYPE_2__ access_time; } ;
typedef TYPE_3__ entry_url ;
typedef int ULONGLONG ;
struct TYPE_8__ {int HighPart; int LowPart; } ;
struct TYPE_11__ {int QuadPart; TYPE_1__ u; } ;
typedef TYPE_4__ ULARGE_INTEGER ;
struct TYPE_12__ {int dwHighDateTime; int dwLowDateTime; } ;
typedef TYPE_5__ FILETIME ;
typedef int BOOL ;


 int FALSE ;
 int FILETIME_SECOND ;
 int GetSystemTimeAsFileTime (TYPE_5__*) ;
 int HASHTABLE_FLAG_BITS ;
 int HASHTABLE_LOCK ;
 int HASHTABLE_URL ;
 int TRUE ;
 int urlcache_hash_entry_set_flags (struct hash_entry*,int ) ;

__attribute__((used)) static BOOL urlcache_hash_entry_is_locked(struct hash_entry *hash_entry, entry_url *url_entry)
{
    FILETIME cur_time;
    ULARGE_INTEGER acc_time, time;

    if ((hash_entry->key & ((1<<HASHTABLE_FLAG_BITS)-1)) != HASHTABLE_LOCK)
        return FALSE;

    GetSystemTimeAsFileTime(&cur_time);
    time.u.LowPart = cur_time.dwLowDateTime;
    time.u.HighPart = cur_time.dwHighDateTime;

    acc_time.u.LowPart = url_entry->access_time.dwLowDateTime;
    acc_time.u.HighPart = url_entry->access_time.dwHighDateTime;

    time.QuadPart -= acc_time.QuadPart;


    if(time.QuadPart > (ULONGLONG)24*60*60*FILETIME_SECOND) {
        urlcache_hash_entry_set_flags(hash_entry, HASHTABLE_URL);
        url_entry->use_count = 0;
        return FALSE;
    }

    return TRUE;
}

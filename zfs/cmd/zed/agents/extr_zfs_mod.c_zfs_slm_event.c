
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int LOG_INFO ;
 int zed_log_msg (int ,char*,char const*,char const*) ;
 int zfs_slm_deliver_event (char const*,char const*,int *) ;

void
zfs_slm_event(const char *class, const char *subclass, nvlist_t *nvl)
{
 zed_log_msg(LOG_INFO, "zfs_slm_event: %s.%s", class, subclass);
 (void) zfs_slm_deliver_event(class, subclass, nvl);
}

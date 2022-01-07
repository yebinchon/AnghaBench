
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ev_opts_t ;


 int g_zfs ;
 char* gettext (char*) ;
 int printf (char*,int) ;
 int zpool_events_clear (int ,int*) ;

__attribute__((used)) static int
zpool_do_events_clear(ev_opts_t *opts)
{
 int count, ret;

 ret = zpool_events_clear(g_zfs, &count);
 if (!ret)
  (void) printf(gettext("cleared %d events\n"), count);

 return (ret);
}

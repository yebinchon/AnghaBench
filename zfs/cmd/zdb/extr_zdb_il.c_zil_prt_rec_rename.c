
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zilog_t ;
typedef char* u_longlong_t ;
struct TYPE_2__ {scalar_t__ lr_tdoid; scalar_t__ lr_sdoid; } ;
typedef TYPE_1__ lr_rename_t ;


 int printf (char*,char*,char*,char*) ;
 int strlen (char*) ;
 char* tab_prefix ;

__attribute__((used)) static void
zil_prt_rec_rename(zilog_t *zilog, int txtype, void *arg)
{
 lr_rename_t *lr = arg;
 char *snm = (char *)(lr + 1);
 char *tnm = snm + strlen(snm) + 1;

 (void) printf("%ssdoid %llu, tdoid %llu\n", tab_prefix,
     (u_longlong_t)lr->lr_sdoid, (u_longlong_t)lr->lr_tdoid);
 (void) printf("%ssrc %s tgt %s\n", tab_prefix, snm, tnm);
}

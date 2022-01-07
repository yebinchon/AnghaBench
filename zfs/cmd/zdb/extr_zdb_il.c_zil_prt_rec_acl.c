
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zilog_t ;
typedef int u_longlong_t ;
struct TYPE_2__ {scalar_t__ lr_aclcnt; scalar_t__ lr_foid; } ;
typedef TYPE_1__ lr_acl_t ;


 int printf (char*,char*,int ,int ) ;
 char* tab_prefix ;

__attribute__((used)) static void
zil_prt_rec_acl(zilog_t *zilog, int txtype, void *arg)
{
 lr_acl_t *lr = arg;

 (void) printf("%sfoid %llu, aclcnt %llu\n", tab_prefix,
     (u_longlong_t)lr->lr_foid, (u_longlong_t)lr->lr_aclcnt);
}

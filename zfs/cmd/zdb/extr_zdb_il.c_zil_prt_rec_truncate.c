
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zilog_t ;
typedef int u_longlong_t ;
struct TYPE_2__ {scalar_t__ lr_length; scalar_t__ lr_offset; scalar_t__ lr_foid; } ;
typedef TYPE_1__ lr_truncate_t ;
typedef int longlong_t ;


 int printf (char*,char*,int ,int ,int ) ;
 char* tab_prefix ;

__attribute__((used)) static void
zil_prt_rec_truncate(zilog_t *zilog, int txtype, void *arg)
{
 lr_truncate_t *lr = arg;

 (void) printf("%sfoid %llu, offset 0x%llx, length 0x%llx\n", tab_prefix,
     (u_longlong_t)lr->lr_foid, (longlong_t)lr->lr_offset,
     (u_longlong_t)lr->lr_length);
}

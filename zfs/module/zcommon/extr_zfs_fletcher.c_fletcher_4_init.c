
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ks_ndata; int * ks_data; } ;


 int B_TRUE ;
 int KSTAT_FLAG_VIRTUAL ;
 int KSTAT_TYPE_RAW ;
 int UINT32_MAX ;
 int fletcher_4_benchmark () ;
 int fletcher_4_initialized ;
 TYPE_1__* fletcher_4_kstat ;
 int fletcher_4_kstat_addr ;
 int fletcher_4_kstat_data ;
 int fletcher_4_kstat_headers ;
 TYPE_1__* kstat_create (char*,int ,char*,char*,int ,int ,int ) ;
 int kstat_install (TYPE_1__*) ;
 int kstat_set_raw_ops (TYPE_1__*,int ,int ,int ) ;

void
fletcher_4_init(void)
{

 fletcher_4_benchmark();
 fletcher_4_initialized = B_TRUE;
}

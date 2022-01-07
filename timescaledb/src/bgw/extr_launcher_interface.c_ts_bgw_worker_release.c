
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGFunction ;


 int BoolGetDatum (int) ;
 int DirectFunctionCall1 (int ,int ) ;
 int EXTENSION_SO ;
 int load_external_function (int ,char*,int,int *) ;

extern void
ts_bgw_worker_release(void)
{
 PGFunction release = load_external_function(EXTENSION_SO, "ts_bgw_worker_release", 1, ((void*)0));

 DirectFunctionCall1(release, BoolGetDatum(0));
}

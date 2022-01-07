
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGFunction ;


 int BoolGetDatum (int) ;
 int DatumGetBool (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int EXTENSION_SO ;
 int load_external_function (int ,char*,int,int *) ;

extern bool
ts_bgw_worker_reserve(void)
{
 PGFunction reserve = load_external_function(EXTENSION_SO, "ts_bgw_worker_reserve", 1, ((void*)0));

 return DatumGetBool(
  DirectFunctionCall1(reserve, BoolGetDatum(0)));
}

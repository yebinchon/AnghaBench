
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGFunction ;


 int BoolGetDatum (int) ;
 int DatumGetInt32 (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int EXTENSION_SO ;
 int load_external_function (int ,char*,int,int *) ;

extern int
ts_bgw_num_unreserved(void)
{
 PGFunction unreserved =
  load_external_function(EXTENSION_SO, "ts_bgw_num_unreserved", 1, ((void*)0));

 return DatumGetInt32(
  DirectFunctionCall1(unreserved, BoolGetDatum(0)));
}

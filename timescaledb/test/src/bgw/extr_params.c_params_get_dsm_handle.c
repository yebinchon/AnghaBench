
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dsm_handle ;


 scalar_t__ params_load_dsm_handle () ;

__attribute__((used)) static dsm_handle
params_get_dsm_handle()
{
 static dsm_handle handle = 0;

 if (handle == 0)
  handle = params_load_dsm_handle();

 return handle;
}

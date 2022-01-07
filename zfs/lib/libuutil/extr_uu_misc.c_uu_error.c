
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int UU_ERROR_UNKNOWN ;
 int _uu_main_error ;
 scalar_t__ _uu_main_thread ;
 scalar_t__ pthread_getspecific (int ) ;
 int uu_error_key ;
 scalar_t__ uu_error_key_setup ;

uint32_t
uu_error(void)
{
 if (_uu_main_thread)
  return (_uu_main_error);

 if (uu_error_key_setup < 0)
  return (UU_ERROR_UNKNOWN);





 return ((uint32_t)(uintptr_t)pthread_getspecific(uu_error_key));
}

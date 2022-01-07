
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;


 int uu_exit_fatal_value ;
 int uu_exit_ok_value ;
 int uu_exit_usage_value ;

void
uu_alt_exit(int profile)
{
 switch (profile) {
 case 129:
  uu_exit_ok_value = EXIT_SUCCESS;
  uu_exit_fatal_value = EXIT_FAILURE;
  uu_exit_usage_value = 2;
  break;
 case 128:
  uu_exit_ok_value = EXIT_SUCCESS;
  uu_exit_fatal_value = 124;
  uu_exit_usage_value = 125;
  break;
 }
}

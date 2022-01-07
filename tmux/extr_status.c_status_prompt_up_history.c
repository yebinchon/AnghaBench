
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 char const** status_prompt_hlist ;
 scalar_t__ status_prompt_hsize ;

__attribute__((used)) static const char *
status_prompt_up_history(u_int *idx)
{





 if (status_prompt_hsize == 0 || *idx == status_prompt_hsize)
  return (((void*)0));
 (*idx)++;
 return (status_prompt_hlist[status_prompt_hsize - *idx]);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAYSIZE (char const***) ;
 int assert (int) ;
 char const*** kb_hr_list ;
 scalar_t__ safe_strcmp (char const*,char const*) ;

__attribute__((used)) static const char* kb_to_hr(const char* kb)
{
 int i;
 for (i=0; i<ARRAYSIZE(kb_hr_list); i++) {
  if (safe_strcmp(kb, kb_hr_list[i][0]) == 0) {
   return kb_hr_list[i][1];
  }
 }

 assert(i < ARRAYSIZE(kb_hr_list));
 return ((void*)0);
}

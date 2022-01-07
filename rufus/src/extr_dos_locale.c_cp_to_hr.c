
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_3__ {scalar_t__ cp; char const* name; } ;


 int ARRAYSIZE (TYPE_1__*) ;
 int assert (int) ;
 TYPE_1__* cp_hr_list ;

__attribute__((used)) static const char* cp_to_hr(ULONG cp)
{
 int i;
 for (i=0; i<ARRAYSIZE(cp_hr_list); i++) {
  if (cp_hr_list[i].cp == cp) {
   return cp_hr_list[i].name;
  }
 }

 assert(i < ARRAYSIZE(cp_hr_list));
 return ((void*)0);
}

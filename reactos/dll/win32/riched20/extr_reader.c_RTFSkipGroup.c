
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rtfClass; scalar_t__ rtfMajor; } ;
typedef TYPE_1__ RTF_Info ;


 scalar_t__ RTFGetToken (TYPE_1__*) ;
 scalar_t__ rtfBeginGroup ;
 scalar_t__ rtfEOF ;
 scalar_t__ rtfEndGroup ;
 scalar_t__ rtfGroup ;

void RTFSkipGroup(RTF_Info *info)
{
 int level = 1;

 while (RTFGetToken (info) != rtfEOF)
 {
  if (info->rtfClass == rtfGroup)
  {
   if (info->rtfMajor == rtfBeginGroup)
    ++level;
   else if (info->rtfMajor == rtfEndGroup)
   {
    if (--level < 1)
     break;
   }
  }
 }
}

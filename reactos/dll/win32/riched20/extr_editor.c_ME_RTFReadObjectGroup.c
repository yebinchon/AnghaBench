
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ rtfClass; scalar_t__ rtfMajor; int rtfMinor; } ;
typedef TYPE_1__ RTF_Info ;


 int FIXME (char*,scalar_t__,scalar_t__,int ) ;
 scalar_t__ RTFCheckCM (TYPE_1__*,scalar_t__,scalar_t__) ;
 scalar_t__ RTFCheckCMM (TYPE_1__*,scalar_t__,int ,int ) ;
 scalar_t__ RTFGetToken (TYPE_1__*) ;
 int RTFRouteToken (TYPE_1__*) ;
 int RTFSkipGroup (TYPE_1__*) ;
 scalar_t__ rtfBeginGroup ;
 scalar_t__ rtfControl ;
 int rtfDestination ;
 scalar_t__ rtfEOF ;
 scalar_t__ rtfEndGroup ;
 scalar_t__ rtfGroup ;
 scalar_t__ rtfObjAttr ;
 int rtfObjResult ;

__attribute__((used)) static void ME_RTFReadObjectGroup(RTF_Info *info)
{
  for (;;)
  {
    RTFGetToken (info);
    if (info->rtfClass == rtfEOF)
      return;
    if (RTFCheckCM(info, rtfGroup, rtfEndGroup))
      break;
    if (RTFCheckCM(info, rtfGroup, rtfBeginGroup))
    {
      RTFGetToken (info);
      if (info->rtfClass == rtfEOF)
        return;
      if (RTFCheckCMM(info, rtfControl, rtfDestination, rtfObjResult))
      {
 int level = 1;

 while (RTFGetToken (info) != rtfEOF)
 {
          if (info->rtfClass == rtfGroup)
          {
            if (info->rtfMajor == rtfBeginGroup) level++;
            else if (info->rtfMajor == rtfEndGroup && --level < 0) break;
          }
          RTFRouteToken(info);
 }
      }
      else RTFSkipGroup(info);
      continue;
    }
    if (!RTFCheckCM (info, rtfControl, rtfObjAttr))
    {
      FIXME("Non supported attribute: %d %d %d\n", info->rtfClass, info->rtfMajor, info->rtfMinor);
      return;
    }
  }
  RTFRouteToken(info);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rtfMinor; } ;
typedef TYPE_1__ RTF_Info ;


 int RTFGetDestinationCallback (TYPE_1__*,int ) ;
 int RTFSkipGroup (TYPE_1__*) ;

__attribute__((used)) static void
Destination (RTF_Info *info)
{
 if (!RTFGetDestinationCallback(info, info->rtfMinor))
  RTFSkipGroup (info);
}

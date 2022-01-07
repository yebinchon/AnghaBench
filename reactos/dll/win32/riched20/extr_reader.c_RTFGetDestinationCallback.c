
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** dcb; } ;
typedef TYPE_1__ RTF_Info ;
typedef int * RTFFuncPtr ;


 int rtfMaxDestination ;

__attribute__((used)) static RTFFuncPtr RTFGetDestinationCallback(const RTF_Info *info, int dest)
{
 if (dest >= 0 && dest < rtfMaxDestination)
  return info->dcb[dest];
 return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** ccb; } ;
typedef TYPE_1__ RTF_Info ;
typedef int * RTFFuncPtr ;


 int rtfMaxClass ;

__attribute__((used)) static RTFFuncPtr RTFGetClassCallback(const RTF_Info *info, int class)
{
 if (class >= 0 && class < rtfMaxClass)
  return info->ccb[class];
 return ((void*)0);
}

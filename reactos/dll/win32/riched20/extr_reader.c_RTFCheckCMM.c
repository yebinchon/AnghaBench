
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rtfClass; int rtfMajor; int rtfMinor; } ;
typedef TYPE_1__ RTF_Info ;



int RTFCheckCMM(const RTF_Info *info, int class, int major, int minor)
{
 return (info->rtfClass == class && info->rtfMajor == major && info->rtfMinor == minor);
}

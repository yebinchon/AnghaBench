
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int readHook; } ;
typedef TYPE_1__ RTF_Info ;
typedef int RTFFuncPtr ;



void RTFSetReadHook(RTF_Info *info, RTFFuncPtr f)
{
 info->readHook = f;
}

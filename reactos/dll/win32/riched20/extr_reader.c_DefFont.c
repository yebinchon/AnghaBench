
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rtfParam; int defFont; } ;
typedef TYPE_1__ RTF_Info ;


 int TRACE (char*,int ) ;

__attribute__((used)) static void
DefFont(RTF_Info *info)
{
        TRACE("%d\n", info->rtfParam);
        info->defFont = info->rtfParam;
}

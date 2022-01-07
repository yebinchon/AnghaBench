
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ rtfClass; } ;
typedef TYPE_1__ RTF_Info ;


 scalar_t__ RTFCheckCM (TYPE_1__*,int ,int ) ;
 int RTFGetToken (TYPE_1__*) ;
 int RTFRouteToken (TYPE_1__*) ;
 int rtfBeginGroup ;
 scalar_t__ rtfEOF ;
 int rtfEndGroup ;
 int rtfGroup ;

__attribute__((used)) static void ME_RTFReadShpPictGroup( RTF_Info *info )
{
    int level = 1;

    for (;;)
    {
        RTFGetToken (info);

        if (info->rtfClass == rtfEOF) return;
        if (RTFCheckCM( info, rtfGroup, rtfEndGroup ))
        {
            if (--level == 0) break;
        }
        else if (RTFCheckCM( info, rtfGroup, rtfBeginGroup ))
        {
            level++;
        }
        else
        {
            RTFRouteToken( info );
            if (RTFCheckCM( info, rtfGroup, rtfEndGroup ))
                level--;
        }
    }

    RTFRouteToken( info );
    return;
}

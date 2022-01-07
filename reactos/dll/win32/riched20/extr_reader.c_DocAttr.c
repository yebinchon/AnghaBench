
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rtfMinor; int ansiCodePage; int codePage; int rtfParam; } ;
typedef TYPE_1__ RTF_Info ;


 int CP_UTF8 ;
 int TRACE (char*,int,int ) ;



__attribute__((used)) static void
DocAttr(RTF_Info *info)
{
        TRACE("minor %d, param %d\n", info->rtfMinor, info->rtfParam);

        switch (info->rtfMinor)
        {
        case 129:
                info->codePage = info->ansiCodePage = info->rtfParam;
                break;
        case 128:
                info->codePage = info->ansiCodePage = CP_UTF8;
                break;
        }
}

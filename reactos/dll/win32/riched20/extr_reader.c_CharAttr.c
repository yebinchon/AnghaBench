
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int rtfFCodePage; } ;
struct TYPE_7__ {int rtfMinor; int rtfParam; int unicodeLength; int codePage; int ansiCodePage; } ;
typedef TYPE_1__ RTF_Info ;
typedef TYPE_2__ RTFFont ;


 int CP_UTF8 ;
 int ERR (char*,int ) ;
 int RTFFlushOutputBuffer (TYPE_1__*) ;
 TYPE_2__* RTFGetFont (TYPE_1__*,int ) ;
 int TRACE (char*,int ,int ) ;



__attribute__((used)) static void
CharAttr(RTF_Info *info)
{
        RTFFont *font;

        switch (info->rtfMinor)
        {
        case 129:
                font = RTFGetFont(info, info->rtfParam);
                if (font)
                {
                        if (info->ansiCodePage != CP_UTF8 && info->codePage != font->rtfFCodePage)
                        {
                                RTFFlushOutputBuffer(info);
                                info->codePage = font->rtfFCodePage;
                        }
                        TRACE("font %d codepage %d\n", info->rtfParam, info->codePage);
                }
                else
                        ERR( "unknown font %d\n", info->rtfParam);
                break;
        case 128:
                info->unicodeLength = info->rtfParam;
                break;
        }
}

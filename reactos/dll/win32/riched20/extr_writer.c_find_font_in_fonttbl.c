
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_8__ {int dwMask; scalar_t__ bCharSet; int * szFaceName; } ;
struct TYPE_7__ {int nFontTblLen; TYPE_1__* fonttbl; } ;
struct TYPE_6__ {scalar_t__ bCharSet; int * szFaceName; } ;
typedef TYPE_2__ ME_OutStream ;
typedef TYPE_3__ CHARFORMAT2W ;
typedef int BOOL ;


 int CFM_CHARSET ;
 int CFM_FACE ;
 int lstrcmpW (int *,int *) ;

__attribute__((used)) static BOOL find_font_in_fonttbl( ME_OutStream *stream, CHARFORMAT2W *fmt, unsigned int *idx )
{
    WCHAR *facename;
    int i;

    *idx = 0;
    if (fmt->dwMask & CFM_FACE)
        facename = fmt->szFaceName;
    else
        facename = stream->fonttbl[0].szFaceName;
    for (i = 0; i < stream->nFontTblLen; i++)
    {
        if (facename == stream->fonttbl[i].szFaceName
            || !lstrcmpW(facename, stream->fonttbl[i].szFaceName))
            if (!(fmt->dwMask & CFM_CHARSET)
                || fmt->bCharSet == stream->fonttbl[i].bCharSet)
            {
                *idx = i;
                break;
            }
    }

    return i < stream->nFontTblLen;
}

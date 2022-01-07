
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nColorTblLen; scalar_t__* colortbl; int nFontTblLen; } ;
typedef TYPE_1__ ME_OutStream ;
typedef scalar_t__ COLORREF ;
typedef int BOOL ;



__attribute__((used)) static BOOL find_color_in_colortbl( ME_OutStream *stream, COLORREF color, unsigned int *idx )
{
    int i;

    *idx = 0;
    for (i = 1; i < stream->nColorTblLen; i++)
    {
        if (stream->colortbl[i] == color)
        {
            *idx = i;
            break;
        }
    }

    return i < stream->nFontTblLen;
}

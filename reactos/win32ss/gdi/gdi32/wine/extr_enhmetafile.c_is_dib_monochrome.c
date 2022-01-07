
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* bmciColors; } ;
struct TYPE_7__ {int biBitCount; int biSize; } ;
struct TYPE_10__ {TYPE_3__* bmiColors; TYPE_1__ bmiHeader; } ;
struct TYPE_9__ {int rgbRed; int rgbGreen; int rgbBlue; scalar_t__ rgbReserved; } ;
struct TYPE_8__ {int rgbtRed; int rgbtGreen; int rgbtBlue; } ;
typedef TYPE_2__ RGBTRIPLE ;
typedef TYPE_3__ RGBQUAD ;
typedef int BOOL ;
typedef TYPE_4__ BITMAPINFO ;
typedef TYPE_5__ BITMAPCOREINFO ;
typedef int BITMAPCOREHEADER ;


 int FALSE ;

__attribute__((used)) static inline BOOL is_dib_monochrome( const BITMAPINFO* info )
{
    if (info->bmiHeader.biBitCount != 1) return FALSE;

    if (info->bmiHeader.biSize == sizeof(BITMAPCOREHEADER))
    {
        const RGBTRIPLE *rgb = ((const BITMAPCOREINFO *) info)->bmciColors;


        if ((rgb->rgbtRed == 0) && (rgb->rgbtGreen == 0) && (rgb->rgbtBlue == 0))
        {
            rgb++;

            return ((rgb->rgbtRed == 0xff) && (rgb->rgbtGreen == 0xff)
                 && (rgb->rgbtBlue == 0xff));
        }
        else return FALSE;
    }
    else
    {
        const RGBQUAD *rgb = info->bmiColors;


        if ((rgb->rgbRed == 0) && (rgb->rgbGreen == 0) &&
            (rgb->rgbBlue == 0) && (rgb->rgbReserved == 0))
        {
            rgb++;


            return ((rgb->rgbRed == 0xff) && (rgb->rgbGreen == 0xff)
                 && (rgb->rgbBlue == 0xff) && (rgb->rgbReserved == 0));
        }
        else return FALSE;
    }
}

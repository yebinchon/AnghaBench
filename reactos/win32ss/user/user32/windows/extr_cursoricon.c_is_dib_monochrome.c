
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int bcBitCount; } ;
struct TYPE_13__ {TYPE_1__ bmciHeader; TYPE_3__* bmciColors; } ;
struct TYPE_9__ {int biSize; int biBitCount; } ;
struct TYPE_12__ {TYPE_2__ bmiHeader; TYPE_4__* bmiColors; } ;
struct TYPE_11__ {int rgbRed; int rgbGreen; int rgbBlue; scalar_t__ rgbReserved; } ;
struct TYPE_10__ {int rgbtRed; int rgbtGreen; int rgbtBlue; } ;
typedef TYPE_3__ RGBTRIPLE ;
typedef TYPE_4__ RGBQUAD ;
typedef int BOOL ;
typedef TYPE_5__ BITMAPINFO ;
typedef TYPE_6__ BITMAPCOREINFO ;
typedef int BITMAPCOREHEADER ;


 int FALSE ;

__attribute__((used)) static BOOL is_dib_monochrome( const BITMAPINFO* info )
{
    if (info->bmiHeader.biSize == sizeof(BITMAPCOREHEADER))
    {
        const RGBTRIPLE *rgb = ((const BITMAPCOREINFO*)info)->bmciColors;

        if (((const BITMAPCOREINFO*)info)->bmciHeader.bcBitCount != 1) return FALSE;


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

        if (info->bmiHeader.biBitCount != 1) return FALSE;


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

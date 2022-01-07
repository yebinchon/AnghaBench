
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WORD ;
typedef int UINT ;
struct TYPE_3__ {int rdSize; int rdFunction; } ;
typedef int PHYSDEV ;
typedef TYPE_1__ METARECORD ;
typedef int HPALETTE ;
typedef int BOOL ;


 int META_REALIZEPALETTE ;
 int MFDRV_WriteRecord (int ,TYPE_1__*,int) ;

UINT MFDRV_RealizePalette(PHYSDEV dev, HPALETTE hPalette, BOOL dummy)
{
    char buffer[sizeof(METARECORD) - sizeof(WORD)];
    METARECORD *mr = (METARECORD *)&buffer;

    mr->rdSize = (sizeof(METARECORD) - sizeof(WORD)) / sizeof(WORD);
    mr->rdFunction = META_REALIZEPALETTE;

    if (!(MFDRV_WriteRecord( dev, mr, mr->rdSize * sizeof(WORD)))) return 0;






    return 1;
}

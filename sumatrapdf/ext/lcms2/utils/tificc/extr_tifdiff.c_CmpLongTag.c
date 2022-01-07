
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
typedef int TIFF ;


 int TIFFGetField (int *,int,scalar_t__*) ;

__attribute__((used)) static
int CmpLongTag(TIFF* tif1, TIFF* tif2, int tag)
{
        uint32 v1, v2;

        if (!TIFFGetField(tif1, tag, &v1)) return 0;
        if (!TIFFGetField(tif2, tag, &v2)) return 0;

        return v1 == v2;
}

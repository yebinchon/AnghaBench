
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int TIFF ;


 int FatalError (char*,char const*) ;
 int TIFFGetField (int *,int,int*) ;

__attribute__((used)) static
void AssureShortTagIs(TIFF* tif1, TIFF* tiff2, int tag, int Val, const char* Error)
{
        uint16 v1;


        if (!TIFFGetField(tif1, tag, &v1)) goto Err;
        if (v1 != Val) goto Err;

        if (!TIFFGetField(tiff2, tag, &v1)) goto Err;
        if (v1 != Val) goto Err;

        return;
Err:
        FatalError("%s is not proper", Error);
}

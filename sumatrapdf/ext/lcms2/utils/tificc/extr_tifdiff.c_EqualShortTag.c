
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TIFF ;


 int CmpShortTag (int *,int *,int) ;
 int FatalError (char*,char const*) ;

__attribute__((used)) static
void EqualShortTag(TIFF* tif1, TIFF* tif2, int tag, const char* Error)
{
    if (!CmpShortTag(tif1, tif2, tag))
        FatalError("%s is different", Error);
}

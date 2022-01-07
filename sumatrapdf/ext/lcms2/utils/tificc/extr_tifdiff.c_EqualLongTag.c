
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TIFF ;


 int CmpLongTag (int *,int *,int) ;
 int FatalError (char*,char const*) ;

__attribute__((used)) static
void EqualLongTag(TIFF* tif1, TIFF* tif2, int tag, const char* Error)
{
    if (!CmpLongTag(tif1, tif2, tag))
        FatalError("%s is different", Error);
}

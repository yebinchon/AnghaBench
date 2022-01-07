
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef double cmsFloat64Number ;


 int sprintf (char*,char*,double) ;

__attribute__((used)) static
const char* MemStr(cmsUInt32Number size)
{
    static char Buffer[1024];

    if (size > 1024*1024) {
        sprintf(Buffer, "%g Mb", (cmsFloat64Number) size / (1024.0*1024.0));
    }
    else
        if (size > 1024) {
            sprintf(Buffer, "%g Kb", (cmsFloat64Number) size / 1024.0);
        }
        else
            sprintf(Buffer, "%g bytes", (cmsFloat64Number) size);

    return Buffer;
}

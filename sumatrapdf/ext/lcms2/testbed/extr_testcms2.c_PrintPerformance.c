
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double cmsUInt32Number ;
typedef double cmsFloat64Number ;


 double CLOCKS_PER_SEC ;
 int fflush (int ) ;
 int printf (char*,double) ;
 int stdout ;

__attribute__((used)) static
void PrintPerformance(cmsUInt32Number Bytes, cmsUInt32Number SizeOfPixel, cmsFloat64Number diff)
{
    cmsFloat64Number seconds = (cmsFloat64Number) diff / CLOCKS_PER_SEC;
    cmsFloat64Number mpix_sec = Bytes / (1024.0*1024.0*seconds*SizeOfPixel);

    printf("%#4.3g MPixel/sec.\n", mpix_sec);
    fflush(stdout);
}

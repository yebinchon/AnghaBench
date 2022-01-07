
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int cmsInt32Number ;


 int Check1D (int,int ,int) ;
 int FALSE ;
 int printf (char*,...) ;

__attribute__((used)) static
cmsInt32Number ExhaustiveCheck1DLERP(void)
{
    cmsUInt32Number j;

    printf("\n");
    for (j=10; j <= 4096; j++) {

        if ((j % 10) == 0) printf("%u    \r", j);

        if (!Check1D(j, FALSE, 1)) return 0;
    }

    printf("\rResult is ");
    return 1;
}

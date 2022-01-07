
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPJ_UINT8 ;
typedef int OPJ_UINT32 ;
typedef int OPJ_BOOL ;
typedef int FILE ;


 int OPJ_ARG_NOT_USED (int) ;
 int OPJ_FALSE ;
 int OPJ_TRUE ;
 int fprintf (int ,char*) ;
 int fread (int *,int,int,int *) ;
 int stderr ;

__attribute__((used)) static OPJ_BOOL bmp_read_raw_data(FILE* IN, OPJ_UINT8* pData, OPJ_UINT32 stride,
                                  OPJ_UINT32 width, OPJ_UINT32 height)
{
    OPJ_ARG_NOT_USED(width);

    if (fread(pData, sizeof(OPJ_UINT8), stride * height, IN) != (stride * height)) {
        fprintf(stderr,
                "\nError: fread return a number of element different from the expected.\n");
        return OPJ_FALSE;
    }
    return OPJ_TRUE;
}

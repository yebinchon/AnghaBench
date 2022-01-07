
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_compressionParameters ;
typedef int U32 ;


 int DISPLAY (char*,...) ;
 int RDG_genBuffer (void* const,size_t,double,double,int ) ;
 int benchMem (int,void* const,size_t,int,int ) ;
 int free (void* const) ;
 void* malloc (size_t) ;

__attribute__((used)) static int benchSample(U32 benchNb,
                       size_t benchedSize, double compressibility,
                       int cLevel, ZSTD_compressionParameters cparams)
{

    void* const origBuff = malloc(benchedSize);
    if (!origBuff) { DISPLAY("\nError: not enough memory!\n"); return 12; }


    RDG_genBuffer(origBuff, benchedSize, compressibility, 0.0, 0);


    DISPLAY("\r%70s\r", "");
    DISPLAY(" Sample %u bytes : \n", (unsigned)benchedSize);
    if (benchNb) {
        benchMem(benchNb, origBuff, benchedSize, cLevel, cparams);
    } else {
        for (benchNb=0; benchNb<100; benchNb++) {
            benchMem(benchNb, origBuff, benchedSize, cLevel, cparams);
    } }

    free(origBuff);
    return 0;
}

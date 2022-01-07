
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;


 int BMK_benchCLevel (void* const,size_t,char*,int,int,size_t*,int,int *,int ) ;
 int EXM_THROW (int,char*) ;
 int RDG_genBuffer (void* const,size_t,double,double,int ) ;
 int free (void* const) ;
 void* malloc (size_t) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static void BMK_syntheticTest(int cLevel, int cLevelLast, double compressibility)
{
    char name[20] = {0};
    size_t benchedSize = 10000000;
    void* const srcBuffer = malloc(benchedSize);


    if (!srcBuffer) EXM_THROW(21, "not enough memory");


    RDG_genBuffer(srcBuffer, benchedSize, compressibility, 0.0, 0);


    snprintf (name, sizeof(name), "Synthetic %2u%%", (unsigned)(compressibility*100));
    BMK_benchCLevel(srcBuffer, benchedSize, name, cLevel, cLevelLast, &benchedSize, 1, ((void*)0), 0);


    free(srcBuffer);
}

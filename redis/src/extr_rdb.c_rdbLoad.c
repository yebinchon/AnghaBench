
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rio ;
typedef int rdbSaveInfo ;
typedef int FILE ;


 int C_ERR ;
 int C_OK ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int rdbLoadRio (int *,int,int *) ;
 int rioInitWithFile (int *,int *) ;
 int startLoadingFile (int *,char*,int) ;
 int stopLoading (int) ;

int rdbLoad(char *filename, rdbSaveInfo *rsi, int rdbflags) {
    FILE *fp;
    rio rdb;
    int retval;

    if ((fp = fopen(filename,"r")) == ((void*)0)) return C_ERR;
    startLoadingFile(fp, filename,rdbflags);
    rioInitWithFile(&rdb,fp);
    retval = rdbLoadRio(&rdb,rdbflags,rsi);
    fclose(fp);
    stopLoading(retval==C_OK);
    return retval;
}

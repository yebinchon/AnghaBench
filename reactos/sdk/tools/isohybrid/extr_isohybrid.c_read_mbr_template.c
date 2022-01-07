
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int FILE ;


 size_t MBRSIZE ;
 int clearerr (int *) ;
 int err (int,char*,char*) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char*,char*) ;
 size_t fread (int *,int,size_t,int *) ;

void
read_mbr_template(char *path, uint8_t *mbr)
{
    FILE *fp;
    size_t ret;

    fp = fopen(path, "rb");
    if (fp == ((void*)0))
        err(1, "could not open MBR template file `%s'", path);
    clearerr(fp);
    ret = fread(mbr, 1, MBRSIZE, fp);
    if (ferror(fp) || ret != MBRSIZE)
        err(1, "error while reading MBR template file `%s'", path);
    fclose(fp);
}

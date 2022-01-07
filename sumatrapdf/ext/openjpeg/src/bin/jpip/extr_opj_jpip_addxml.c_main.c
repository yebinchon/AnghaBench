
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int fprintf (int ,char*,char*) ;
 int fputc (long,int *) ;
 int free (char*) ;
 int fwrite (char*,size_t,int,int *) ;
 int * open_jp2file (char*) ;
 char* read_xmlfile (char*,long*) ;
 int stderr ;

int main(int argc, char *argv[])
{
    FILE *fp;
    char *xmldata, type[] = "xml ";
    long fsize, boxsize;

    if (argc < 3) {
        fprintf(stderr, "USAGE: %s modifing.jp2 adding.xml\n", argv[0]);
        return -1;
    }

    fp = open_jp2file(argv[1]);
    if (!fp) {
        return -1;
    }

    xmldata = read_xmlfile(argv[2], &fsize);
    if (fsize < 0) {
        return -1;
    }
    boxsize = fsize + 8;

    fputc((boxsize >> 24) & 0xff, fp);
    fputc((boxsize >> 16) & 0xff, fp);
    fputc((boxsize >> 8) & 0xff, fp);
    fputc(boxsize & 0xff, fp);
    fwrite(type, 4, 1, fp);
    fwrite(xmldata, (size_t)fsize, 1, fp);

    free(xmldata);
    fclose(fp);

    return 0;
}

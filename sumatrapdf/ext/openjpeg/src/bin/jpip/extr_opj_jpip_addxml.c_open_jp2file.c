
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char const*) ;
 int fread (char*,int,int,int *) ;
 int free (char*) ;
 int fseek (int *,int ,int ) ;
 scalar_t__ malloc (int) ;
 int stderr ;
 scalar_t__ strncmp (char*,char*,int) ;

FILE * open_jp2file(const char filename[])
{
    FILE *fp;
    char *data;

    if (!(fp = fopen(filename, "a+b"))) {
        fprintf(stderr, "Original JP2 %s not found\n", filename);
        return ((void*)0);
    }

    if (fseek(fp, 0, SEEK_SET) == -1) {
        fclose(fp);
        fprintf(stderr, "Original JP2 %s broken (fseek error)\n", filename);
        return ((void*)0);
    }

    data = (char *)malloc(12);
    if (fread(data, 12, 1, fp) != 1) {
        free(data);
        fclose(fp);
        fprintf(stderr, "Original JP2 %s broken (read error)\n", filename);
        return ((void*)0);
    }

    if (*data || *(data + 1) || *(data + 2) ||
            *(data + 3) != 12 || strncmp(data + 4, "jP  \r\n\x87\n", 8)) {
        free(data);
        fclose(fp);
        fprintf(stderr, "No JPEG 2000 Signature box in target %s\n", filename);
        return ((void*)0);
    }
    free(data);
    return fp;
}

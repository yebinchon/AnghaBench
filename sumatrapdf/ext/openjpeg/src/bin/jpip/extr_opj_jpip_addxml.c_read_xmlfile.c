
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int assert (int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char const*) ;
 int fread (char*,size_t,int,int *) ;
 int free (char*) ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;
 scalar_t__ malloc (size_t) ;
 int stderr ;

char * read_xmlfile(const char filename[], long *fsize)
{
    FILE *fp;
    char *data;


    if (!(fp = fopen(filename, "r"))) {
        fprintf(stderr, "XML file %s not found\n", filename);
        return ((void*)0);
    }

    if (fseek(fp, 0, SEEK_END) == -1) {
        fprintf(stderr, "XML file %s broken (seek error)\n", filename);
        fclose(fp);
        return ((void*)0);
    }

    if ((*fsize = ftell(fp)) == -1) {
        fprintf(stderr, "XML file %s broken (seek error)\n", filename);
        fclose(fp);
        return ((void*)0);
    }
    assert(*fsize >= 0);

    if (fseek(fp, 0, SEEK_SET) == -1) {
        fprintf(stderr, "XML file %s broken (seek error)\n", filename);
        fclose(fp);
        return ((void*)0);
    }

    data = (char *)malloc((size_t) * fsize);

    if (fread(data, (size_t)*fsize, 1, fp) != 1) {
        fprintf(stderr, "XML file %s broken (read error)\n", filename);
        free(data);
        fclose(fp);
        return ((void*)0);
    }

    fclose(fp);

    return data;
}

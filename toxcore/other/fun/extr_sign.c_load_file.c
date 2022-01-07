
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (char*,int,int,int *) ;
 int free (char*) ;
 int fseek (int *,int ,int ) ;
 int ftell (int *) ;
 scalar_t__ malloc (int) ;

int load_file(char *filename, char **result)
{
    int size = 0;
    FILE *f = fopen(filename, "rb");

    if (f == ((void*)0)) {
        *result = ((void*)0);
        return -1;
    }

    fseek(f, 0, SEEK_END);
    size = ftell(f);
    fseek(f, 0, SEEK_SET);
    *result = (char *)malloc(size + 1);

    if (size != fread(*result, sizeof(char), size, f)) {
        free(*result);
        fclose(f);
        return -2;
    }

    fclose(f);
    (*result)[size] = 0;
    return size;
}

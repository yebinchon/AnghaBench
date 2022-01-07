
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int e (char*,char*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int stbi_info_from_file (int *,int*,int*,int*) ;

int stbi_info(char const *filename, int *x, int *y, int *comp)
{
    FILE *f = fopen(filename, "rb");
    int result;
    if (!f) return e("can't fopen", "Unable to open file");
    result = stbi_info_from_file(f, x, y, comp);
    fclose(f);
    return result;
}

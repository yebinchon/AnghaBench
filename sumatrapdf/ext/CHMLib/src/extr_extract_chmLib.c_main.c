
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extract_context {char* base_path; } ;
struct chmFile {int dummy; } ;


 int CHM_ENUMERATE_ALL ;
 int _extract_callback ;
 int chm_close (struct chmFile*) ;
 int chm_enumerate (struct chmFile*,int ,int ,void*) ;
 struct chmFile* chm_open (char*) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int printf (char*,...) ;
 int stderr ;

int main(int c, char **v)
{
    struct chmFile *h;
    struct extract_context ec;

    if (c < 3)
    {
        fprintf(stderr, "usage: %s <chmfile> <outdir>\n", v[0]);
        exit(1);
    }

    h = chm_open(v[1]);
    if (h == ((void*)0))
    {
        fprintf(stderr, "failed to open %s\n", v[1]);
        exit(1);
    }

    printf("%s:\n", v[1]);
    ec.base_path = v[2];
    if (! chm_enumerate(h,
                        CHM_ENUMERATE_ALL,
                        _extract_callback,
                        (void *)&ec))
        printf("   *** ERROR ***\n");

    chm_close(h);

    return 0;
}

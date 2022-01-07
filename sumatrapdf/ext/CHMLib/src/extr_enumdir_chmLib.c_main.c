
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmFile {int dummy; } ;


 int CHM_ENUMERATE_ALL ;
 int _print_ui ;
 int chm_close (struct chmFile*) ;
 int chm_enumerate_dir (struct chmFile*,char*,int ,int ,int *) ;
 struct chmFile* chm_open (char*) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int printf (char*,...) ;
 int stderr ;

int main(int c, char **v)
{
    struct chmFile *h;
    int i;

    if (c < 2)
    {
        fprintf(stderr, "%s <chmfile> [dir] [dir] ...\n", v[0]);
        exit(1);
    }

    h = chm_open(v[1]);
    if (h == ((void*)0))
    {
        fprintf(stderr, "failed to open %s\n", v[1]);
        exit(1);
    }

    if (c < 3)
    {
        printf("/:\n");
        printf(" spc    start   length   type\t\t\tname\n");
        printf(" ===    =====   ======   ====\t\t\t====\n");

        if (! chm_enumerate_dir(h,
                                "/",
                                CHM_ENUMERATE_ALL,
                                _print_ui,
                                ((void*)0)))
            printf("   *** ERROR ***\n");
    }
    else
    {
        for (i=2; i<c; i++)
        {
            printf("%s:\n", v[i]);
            printf(" spc    start   length   name\n");
            printf(" ===    =====   ======   ====\n");

            if (! chm_enumerate_dir(h,
                                    v[i],
                                    CHM_ENUMERATE_ALL,
                                    _print_ui,
                                    ((void*)0)))
            printf("   *** ERROR ***\n");
        }
    }

    chm_close(h);

    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;


 int TRUE ;
 int dumping_on ;
 int exit (int) ;
 int fclose (int *) ;
 int * freopen (char*,char*,int ) ;
 int * fs_file ;
 int printf (char*,...) ;
 int stdout ;
 scalar_t__ stricmp (char*,char*) ;
 int test_NtGdiDdCanCreateSurface (int ) ;
 int test_NtGdiDdCreateDirectDrawObject () ;
 int test_NtGdiDdDeleteDirectDrawObject (int ) ;
 int test_NtGdiDdGetScanLine (int ) ;
 int test_NtGdiDdQueryDirectDrawObject (int ) ;
 int test_NtGdiDdWaitForVerticalBlank (int ) ;

int main(int argc, char **argv)
{
    HANDLE hDirectDrawLocal;

    if (argc == 2)
    {
        if (stricmp(argv[1],"-dump")==0)
        {
            dumping_on = TRUE;
        }

        if ( (stricmp(argv[1],"-help")==0) ||
             (stricmp(argv[1],"-?")==0) ||
             (stricmp(argv[1],"/help")==0) ||
             (stricmp(argv[1],"/?")==0) )
        {
            printf("the %s support follow param \n",argv[0]);
            printf("-dump              : It dump all data it resvie to screen \n");
            printf("-dumpfile filename : It dump all data it resvie to file \n");
            printf("\nrember u can only use one of them at time \n");
            exit(1);
        }
    }

    if (argc == 3)
    {
        if (stricmp(argv[1],"-dumpfile")==0)
        {

            if ( (fs_file = freopen(argv[2], "wb", stdout)) != ((void*)0))
            {
                dumping_on = TRUE;
            }
        }
    }

    hDirectDrawLocal = test_NtGdiDdCreateDirectDrawObject();

    test_NtGdiDdQueryDirectDrawObject(hDirectDrawLocal);

    test_NtGdiDdGetScanLine(hDirectDrawLocal);

    test_NtGdiDdWaitForVerticalBlank(hDirectDrawLocal);

    test_NtGdiDdCanCreateSurface(hDirectDrawLocal);

    test_NtGdiDdDeleteDirectDrawObject(hDirectDrawLocal);

    if (fs_file != ((void*)0))
    {
        fclose(fs_file);
    }
    return 0;
}

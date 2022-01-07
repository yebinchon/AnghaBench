
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wine_test {char* name; char* exename; } ;
typedef int LPTSTR ;
typedef int FILE ;
typedef int DWORD ;
typedef int BYTE ;


 int GetLastError () ;
 int R_FATAL ;
 int R_STEP ;
 int TESTRES ;
 int * extract_rcdata (int ,int ,int *) ;
 scalar_t__ fclose (int *) ;
 int * fopen (char*,char*) ;
 int fwrite (int *,int ,int,int *) ;
 int report (int ,char*,char*,...) ;
 char* strmake (int *,char*,char const*,char*) ;
 char* strstr (char*,int ) ;
 int testexe ;
 char* xrealloc (char*,int) ;
 char* xstrdup (int ) ;

__attribute__((used)) static void
extract_test (struct wine_test *test, const char *dir, LPTSTR res_name)
{
    BYTE* code;
    DWORD size;
    FILE* fout;
    char *exepos;

    code = extract_rcdata (res_name, TESTRES, &size);
    if (!code) report (R_FATAL, "Can't find test resource %s: %d",
                       res_name, GetLastError ());
    test->name = xstrdup( res_name );
    test->exename = strmake (((void*)0), "%s/%s", dir, test->name);
    exepos = strstr (test->name, testexe);
    if (!exepos) report (R_FATAL, "Not an .exe file: %s", test->name);
    *exepos = 0;
    test->name = xrealloc (test->name, exepos - test->name + 1);
    report (R_STEP, "Extracting: %s", test->name);

    if (!(fout = fopen (test->exename, "wb")) ||
        (fwrite (code, size, 1, fout) != 1) ||
        fclose (fout)) report (R_FATAL, "Failed to write file %s.",
                               test->exename);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wine_test {int name; int exename; } ;


 int free (char*) ;
 char* get_file_rev (char const*) ;
 char* get_test_source_file (int ,char const*) ;
 int run_ex (char*,int *,char const*,int) ;
 char* strmake (int *,char*,int ,char const*) ;
 int xprintf (char*,int ,char const*,...) ;

__attribute__((used)) static void
run_test (struct wine_test* test, const char* subtest, const char *tempdir)
{
    int status;
    const char* file = get_test_source_file(test->name, subtest);
    const char* rev = get_file_rev(file);
    char *cmd = strmake (((void*)0), "%s %s", test->exename, subtest);

    xprintf ("%s:%s start %s %s\n", test->name, subtest, file, rev);
    status = run_ex (cmd, ((void*)0), tempdir, 120000);
    free (cmd);
    xprintf ("%s:%s done (%d)\n", test->name, subtest, status);
}

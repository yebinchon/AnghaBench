
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wine_test {int subtest_count; char* name; int * subtests; int exename; } ;
typedef int LPTSTR ;
typedef int FILE ;


 int R_ERROR ;
 int R_FATAL ;
 int R_WARNING ;
 int errno ;
 int extract_test (struct wine_test*,char const*,int ) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 size_t fread (char*,int,int,int *) ;
 int free (char*) ;
 scalar_t__ remove (char*) ;
 int report (int ,char*,...) ;
 int run_ex (char*,char*,char const*,int) ;
 int strdup (char*) ;
 char* strmake (int *,char*,int ) ;
 char* strstr (char*,char const*) ;
 char* strtok (char*,int ) ;
 char* tempnam (int ,char*) ;
 int whitespace ;
 int * xmalloc (int) ;
 void* xrealloc (int *,int) ;

__attribute__((used)) static void
get_subtests (const char *tempdir, struct wine_test *test, LPTSTR res_name)
{
    char *subname, *cmd;
    FILE *subfile;
    size_t total;
    char buffer[8192], *index;
    static const char header[] = "Valid test names:";
    int allocated;

    test->subtest_count = 0;

    subname = tempnam (0, "sub");
    if (!subname) report (R_FATAL, "Can't name subtests file.");

    extract_test (test, tempdir, res_name);
    cmd = strmake (((void*)0), "%s --list", test->exename);
    run_ex (cmd, subname, tempdir, 5000);
    free (cmd);

    subfile = fopen (subname, "r");
    if (!subfile) {
        report (R_ERROR, "Can't open subtests output of %s: %d",
                test->name, errno);
        goto quit;
    }
    total = fread (buffer, 1, sizeof buffer, subfile);
    fclose (subfile);
    if (sizeof buffer == total) {
        report (R_ERROR, "Subtest list of %s too big.",
                test->name, sizeof buffer);
        goto quit;
    }
    buffer[total] = 0;

    index = strstr (buffer, header);
    if (!index) {
        report (R_ERROR, "Can't parse subtests output of %s",
                test->name);
        goto quit;
    }
    index += sizeof header;

    allocated = 10;
    test->subtests = xmalloc (allocated * sizeof(char*));
    index = strtok (index, whitespace);
    while (index) {
        if (test->subtest_count == allocated) {
            allocated *= 2;
            test->subtests = xrealloc (test->subtests,
                                       allocated * sizeof(char*));
        }
        test->subtests[test->subtest_count++] = strdup (index);
        index = strtok (((void*)0), whitespace);
    }
    test->subtests = xrealloc (test->subtests,
                               test->subtest_count * sizeof(char*));

 quit:
    if (remove (subname))
        report (R_WARNING, "Can't delete file '%s': %d",
                subname, errno);
    free (subname);
}

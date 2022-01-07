
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int asprintf (char**,char*,char const*,char const*) ;
 int free (char*) ;
 int make_URI_def ;
 int test (int ,char const*,char*) ;

__attribute__((used)) static inline void test_current_directory_path (const char *in, const char *cwd, const char *out)
{
    char *expected_result;
    int val = asprintf (&expected_result, "file://%s/%s", cwd, out);
    if (val < 0)
        abort();

    test (make_URI_def, in, expected_result);
    free(expected_result);
}

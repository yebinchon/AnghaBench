
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* (* conv_t ) (char const*) ;


 int free (char*) ;
 int test_compare (char const*,char const*,char*) ;

__attribute__((used)) static void test (conv_t f, const char *in, const char *out)
{
    char *res = f(in);
    test_compare(in, out, res);
    free(res);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char const*,char*,char const*) ;
 int stderr ;

__attribute__((used)) static void test_equal(const char *s, int (*cmp)(const char *, const char *))
{
    int ret = cmp(s, s);
    if (ret != 0) {
        fprintf(stderr, "Failure: \"%s\" %s \"%s\"\n",
                s, (ret < 0) ? "<" : ">", s);
        exit(1);
    }
}

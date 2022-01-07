
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char const*,char const*,...) ;
 int stderr ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static void test_compare(const char *in, const char *exp, const char *res)
{
    if (res == ((void*)0))
    {
        if (exp != ((void*)0))
            fprintf(stderr, "\"%s\" returned NULL, expected \"%s\"\n",
                    in, exp);
        else
            return;
    }
    else
    {
        if (exp == ((void*)0))
            fprintf(stderr, "\"%s\" returned \"%s\", expected NULL\n",
                    in, res);
        else
        if (strcmp(res, exp))
            fprintf(stderr, "\"%s\" returned \"%s\", expected \"%s\"\n",
                    in, res, exp);
        else
            return;
    }
    exit(2);
}

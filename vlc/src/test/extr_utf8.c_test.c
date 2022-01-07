
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * EnsureUTF8 (char*) ;
 int * IsUTF8 (char const*) ;
 int abort () ;
 int exit (int) ;
 int free (char*) ;
 int printf (char*,char const*,...) ;
 scalar_t__ strcmp (char const*,char const*) ;
 char* strdup (char const*) ;

__attribute__((used)) static void test (const char *in, const char *out)
{
    bool isutf8 = !strcmp (in, out);
    char *str = strdup (in);
    if (str == ((void*)0))
        abort ();

    if (isutf8)
        printf ("\"%s\" should be accepted...\n", in);
    else
        printf ("\"%s\" should be rewritten as \"%s\"...\n", in, out);

    if ((IsUTF8 (in) != ((void*)0)) != isutf8)
    {
        printf (" ERROR: IsUTF8 (%s) failed\n", in);
        exit (1);
    }

    if ((EnsureUTF8 (str) != ((void*)0)) != isutf8)
    {
        printf (" ERROR: EnsureUTF8 (%s) failed\n", in);
        exit (2);
    }

    if (strcmp (str, out))
    {
        printf (" ERROR: got \"%s\"\n", str);
        exit (3);
    }

    if ((EnsureUTF8 (str) == ((void*)0)) || IsUTF8 (str) == ((void*)0))
    {
        printf (" ERROR: EnsureUTF8 (%s) is not UTF-8\n", in);
        exit (4);
    }
    free (str);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int free (char*) ;
 int printf (char*,char const*,...) ;
 int puts (char*) ;
 scalar_t__ strcmp (char*,char const*) ;
 char* vlc_xml_encode (char const*) ;

__attribute__((used)) static void encode (const char *in, const char *out)
{
    char *buf;

    printf ("\"%s\" -> \"%s\" ?\n", in, out);
    buf = vlc_xml_encode (in);

    if (buf == ((void*)0))
    {
        puts(" ERROR: got NULL");
        exit(2);
    }

    if (strcmp (buf, out))
    {
        printf (" ERROR: got \"%s\"\n", buf);
        exit (2);
    }
    free (buf);
}

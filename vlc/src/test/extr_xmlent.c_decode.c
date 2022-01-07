
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char const*,...) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int vlc_xml_decode (char*) ;

__attribute__((used)) static void decode (const char *in, const char *out)
{
    char buf[strlen (in) + 1];

    printf ("\"%s\" -> \"%s\" ?\n", in, out);
    strcpy (buf, in);
    vlc_xml_decode (buf);

    if (strcmp (buf, out))
    {
        printf (" ERROR: got \"%s\"\n", buf);
        exit (2);
    }
}

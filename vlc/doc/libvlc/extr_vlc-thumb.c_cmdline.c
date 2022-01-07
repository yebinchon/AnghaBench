
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int atoi (char const*) ;
 char* malloc (int) ;
 int strcat (char*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strcpy (char*,char*) ;
 char* strdup (char const*) ;
 size_t strlen (char*) ;
 int usage (char const*,int) ;

__attribute__((used)) static void cmdline(int argc, const char **argv, const char **in,
                    char **out, char **out_with_ext, int *w)
{
    int idx = 1;
    size_t len;

    if (argc != 3 && argc != 5)
        usage(argv[0], argc != 2 || strcmp(argv[1], "-h"));

    *w = 0;

    if (argc == 5) {
        if (strcmp(argv[1], "-s"))
            usage(argv[0], 1);

        idx += 2;
        *w = atoi(argv[2]);
    }

    *in = argv[idx++];
    *out = strdup(argv[idx++]);
    if (!*out)
        abort();

    len = strlen(*out);
    if (len >= 4 && !strcmp(*out + len - 4, ".png")) {
        *out_with_ext = *out;
        return;
    }





    *out_with_ext = malloc(len + sizeof ".png");
    if (!*out_with_ext)
        abort();
    strcpy(*out_with_ext, *out);
    strcat(*out_with_ext, ".png");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 scalar_t__ malloc (int) ;
 int stderr ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static char *
make_output_filename(const char *input_filename, const char *extension)
{
    char *output_filename;
    const char *c, *e;
    int len;

    if (extension == ((void*)0)) {
        fprintf(stderr, "no filename extension; cannot create output filename!\n");
        exit(1);
    }

    if (input_filename == ((void*)0))
        c = "out";
    else {

        c = strrchr(input_filename, '/');
        if (c == ((void*)0))
            c = strrchr(input_filename, '\\');
        if (c != ((void*)0))
            c++;
        else
            c = input_filename;
    }


    if (*c == '\0')
        c = "out";


    len = strlen(c);
    e = strrchr(c, '.');
    if (e != ((void*)0))
        len -= strlen(e);


    output_filename = (char *)malloc(len + strlen(extension) + 1);
    if (output_filename == ((void*)0)) {
        fprintf(stderr, "failed to allocate memory for output filename\n");
        exit(1);
    }

    strncpy(output_filename, c, len);
    strncpy(output_filename + len, extension, strlen(extension));
    *(output_filename + len + strlen(extension)) = '\0';


    return (output_filename);
}

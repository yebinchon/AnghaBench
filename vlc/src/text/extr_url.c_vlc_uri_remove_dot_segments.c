
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int memmove (char*,char*,size_t) ;
 char* memrchr (char*,char,int) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strcspn (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static char *vlc_uri_remove_dot_segments(char *str)
{
    char *input = str, *output = str;

    while (input[0] != '\0')
    {
        assert(output <= input);

        if (strncmp(input, "../", 3) == 0)
        {
            input += 3;
            continue;
        }
        if (strncmp(input, "./", 2) == 0)
        {
            input += 2;
            continue;
        }
        if (strncmp(input, "/./", 3) == 0)
        {
            input += 2;
            continue;
        }
        if (strcmp(input, "/.") == 0)
        {
            input[1] = '\0';
            continue;
        }
        if (strncmp(input, "/../", 4) == 0)
        {
            input += 3;
            output = memrchr(str, '/', output - str);
            if (output == ((void*)0))
                output = str;
            continue;
        }
        if (strcmp(input, "/..") == 0)
        {
            input[1] = '\0';
            output = memrchr(str, '/', output - str);
            if (output == ((void*)0))
                output = str;
            continue;
        }
        if (strcmp(input, ".") == 0)
        {
            input++;
            continue;
        }
        if (strcmp(input, "..") == 0)
        {
            input += 2;
            continue;
        }

        if (input[0] == '/')
            *(output++) = *(input++);

        size_t len = strcspn(input, "/");

        if (input != output)
            memmove(output, input, len);

        input += len;
        output += len;
    }

    output[0] = '\0';
    return str;
}

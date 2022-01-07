
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char**) ;
 char** malloc (int) ;
 char** realloc (char**,int) ;

char** strsplit_by_space (char *string, int *length)
{
    char *remainder, *s;
    int size = 8, num = 0, done = 0;
    char **array;

    if (string == ((void*)0) || string[0] == '\0') {
        if (length != ((void*)0)) {
          *length = 0;
        }
        return ((void*)0);
    }

    array = malloc (sizeof(char *) * size);
    if (array == ((void*)0)) {
      return ((void*)0);
    }

    remainder = string;
    while (!done) {
        for (s = remainder; *s != ' ' && *s != '\0'; ++s) ;

        if (*s == '\0')
            done = 1;
        else
            *s = '\0';

        array[num++] = remainder;
        if (!done && num == size) {
            size <<= 1;
            char** tmp = realloc (array, sizeof(char *) * size);
            if (tmp == ((void*)0)) {
              free(array);
              return ((void*)0);
            }
            array = tmp;
        }

        remainder = s + 1;
    }

    if (length != ((void*)0)) {
      *length = num;
    }

    return array;
}

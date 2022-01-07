
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int FILE ;


 char* fgetln (int *,size_t*) ;
 int free (char*) ;
 int memcpy (char*,char*,size_t) ;
 char* realloc (char*,size_t) ;

ssize_t getline(char **lineptr, size_t *n, FILE *stream) {
    size_t len = 0;
    char *srcln = ((void*)0);
    char *newlnptr = ((void*)0);


    if (!(srcln = fgetln(stream, &len))) {
        return -1;
    }

    if (len >= *n) {


        if (!(newlnptr = realloc(*lineptr, len * 2))) {
            return -1;
        }
        *lineptr = newlnptr;
        *n = len * 2;
    }

    memcpy(*lineptr, srcln, len);





    free(srcln);


    (*lineptr)[len] = '\0';
    return len;
}

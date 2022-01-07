
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int * sds ;


 scalar_t__ memcmp (char const*,char const*,int) ;
 int s_free (int **) ;
 int ** s_malloc (int) ;
 int ** s_realloc (int **,int) ;
 int sdsfree (int *) ;
 int * sdsnewlen (char const*,int) ;

sds *sdssplitlen(const char *s, ssize_t len, const char *sep, int seplen, int *count) {
    int elements = 0, slots = 5;
    long start = 0, j;
    sds *tokens;

    if (seplen < 1 || len < 0) return ((void*)0);

    tokens = s_malloc(sizeof(sds)*slots);
    if (tokens == ((void*)0)) return ((void*)0);

    if (len == 0) {
        *count = 0;
        return tokens;
    }
    for (j = 0; j < (len-(seplen-1)); j++) {

        if (slots < elements+2) {
            sds *newtokens;

            slots *= 2;
            newtokens = s_realloc(tokens,sizeof(sds)*slots);
            if (newtokens == ((void*)0)) goto cleanup;
            tokens = newtokens;
        }

        if ((seplen == 1 && *(s+j) == sep[0]) || (memcmp(s+j,sep,seplen) == 0)) {
            tokens[elements] = sdsnewlen(s+start,j-start);
            if (tokens[elements] == ((void*)0)) goto cleanup;
            elements++;
            start = j+seplen;
            j = j+seplen-1;
        }
    }

    tokens[elements] = sdsnewlen(s+start,len-start);
    if (tokens[elements] == ((void*)0)) goto cleanup;
    elements++;
    *count = elements;
    return tokens;

cleanup:
    {
        int i;
        for (i = 0; i < elements; i++) sdsfree(tokens[i]);
        s_free(tokens);
        *count = 0;
        return ((void*)0);
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t SIZE_MAX ;
 int memset (char*,int ,size_t) ;
 char* realloc (char*,size_t) ;

__attribute__((used)) static int comment_pad(char **comments, size_t *length)
{
    const unsigned padding = 512;

    if(SIZE_MAX - *length < padding + 255)
        return 1;

    char *p = *comments;


    size_t newlen = ((*length + padding) / 255 + 1) * 255 - 1;
    char *reaced = realloc(p, newlen);
    if (reaced == ((void*)0))
        return 1;
    p = reaced;

    memset(p + *length, 0, newlen - *length);
    *comments = p;
    *length = newlen;
    return 0;
}

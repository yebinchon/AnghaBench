
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char* sds ;
struct TYPE_2__ {int cbuf; } ;


 int atoi (char*) ;
 TYPE_1__ ldb ;
 char* sdsdup (int ) ;
 int sdsfree (char*) ;
 int sdsfreesplitres (char**,int) ;
 scalar_t__ sdslen (int ) ;
 char* sdsnewlen (char*,int) ;
 char* strchr (char*,char) ;
 char* strstr (char*,char*) ;
 char** zmalloc (int) ;

sds *ldbReplParseCommand(int *argcp) {
    sds *argv = ((void*)0);
    int argc = 0;
    if (sdslen(ldb.cbuf) == 0) return ((void*)0);



    sds copy = sdsdup(ldb.cbuf);
    char *p = copy;






    p = strchr(p,'*'); if (!p) goto protoerr;
    char *plen = p+1;
    p = strstr(p,"\r\n"); if (!p) goto protoerr;
    *p = '\0'; p += 2;
    *argcp = atoi(plen);
    if (*argcp <= 0 || *argcp > 1024) goto protoerr;


    argv = zmalloc(sizeof(sds)*(*argcp));
    argc = 0;
    while(argc < *argcp) {
        if (*p != '$') goto protoerr;
        plen = p+1;
        p = strstr(p,"\r\n"); if (!p) goto protoerr;
        *p = '\0'; p += 2;
        int slen = atoi(plen);
        if (slen <= 0 || slen > 1024) goto protoerr;
        argv[argc++] = sdsnewlen(p,slen);
        p += slen;
        if (p[0] != '\r' || p[1] != '\n') goto protoerr;
        p += 2;
    }
    sdsfree(copy);
    return argv;

protoerr:
    sdsfreesplitres(argv,argc);
    sdsfree(copy);
    return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sds ;
typedef int rax ;


 int USER_COMMAND_BITS_COUNT ;
 void* raxFind (int *,unsigned char*,int ) ;
 int raxInsert (int *,unsigned char*,int ,void*,int *) ;
 int * raxNew () ;
 void* raxNotFound ;
 int sdsfree (scalar_t__) ;
 int sdslen (scalar_t__) ;
 scalar_t__ sdsnew (char const*) ;
 int sdstolower (scalar_t__) ;
 int strlen (scalar_t__) ;

unsigned long ACLGetCommandID(const char *cmdname) {
    static rax *map = ((void*)0);
    static unsigned long nextid = 0;

    sds lowername = sdsnew(cmdname);
    sdstolower(lowername);
    if (map == ((void*)0)) map = raxNew();
    void *id = raxFind(map,(unsigned char*)lowername,sdslen(lowername));
    if (id != raxNotFound) {
        sdsfree(lowername);
        return (unsigned long)id;
    }
    raxInsert(map,(unsigned char*)lowername,strlen(lowername),
              (void*)nextid,((void*)0));
    sdsfree(lowername);
    unsigned long thisid = nextid;
    nextid++;
    if (nextid == USER_COMMAND_BITS_COUNT-1) nextid++;
    return thisid;
}

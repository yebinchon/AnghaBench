
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* ZIPLIST_ENTRY_END (unsigned char*) ;
 unsigned char* ZIPLIST_ENTRY_HEAD (unsigned char*) ;
 int ZIPLIST_HEAD ;
 unsigned char* __ziplistInsert (unsigned char*,unsigned char*,unsigned char*,unsigned int) ;

unsigned char *ziplistPush(unsigned char *zl, unsigned char *s, unsigned int slen, int where) {
    unsigned char *p;
    p = (where == ZIPLIST_HEAD) ? ZIPLIST_ENTRY_HEAD(zl) : ZIPLIST_ENTRY_END(zl);
    return __ziplistInsert(zl,p,s,slen);
}

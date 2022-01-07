
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sds ;
typedef int scorebuf ;


 int ZIPLIST_TAIL ;
 int d2string (char*,int,double) ;
 int sdslen (scalar_t__) ;
 int serverAssert (int ) ;
 unsigned char* ziplistInsert (unsigned char*,unsigned char*,unsigned char*,int) ;
 unsigned char* ziplistNext (unsigned char*,unsigned char*) ;
 unsigned char* ziplistPush (unsigned char*,unsigned char*,int,int ) ;

unsigned char *zzlInsertAt(unsigned char *zl, unsigned char *eptr, sds ele, double score) {
    unsigned char *sptr;
    char scorebuf[128];
    int scorelen;
    size_t offset;

    scorelen = d2string(scorebuf,sizeof(scorebuf),score);
    if (eptr == ((void*)0)) {
        zl = ziplistPush(zl,(unsigned char*)ele,sdslen(ele),ZIPLIST_TAIL);
        zl = ziplistPush(zl,(unsigned char*)scorebuf,scorelen,ZIPLIST_TAIL);
    } else {

        offset = eptr-zl;
        zl = ziplistInsert(zl,eptr,(unsigned char*)ele,sdslen(ele));
        eptr = zl+offset;


        serverAssert((sptr = ziplistNext(zl,eptr)) != ((void*)0));
        zl = ziplistInsert(zl,sptr,(unsigned char*)scorebuf,scorelen);
    }
    return zl;
}

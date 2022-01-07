
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sds ;


 int sdslen (scalar_t__) ;
 int serverAssert (int ) ;
 unsigned char* ziplistIndex (unsigned char*,int ) ;
 unsigned char* ziplistNext (unsigned char*,unsigned char*) ;
 scalar_t__ zzlCompareElements (unsigned char*,unsigned char*,int ) ;
 double zzlGetScore (unsigned char*) ;
 unsigned char* zzlInsertAt (unsigned char*,unsigned char*,scalar_t__,double) ;

unsigned char *zzlInsert(unsigned char *zl, sds ele, double score) {
    unsigned char *eptr = ziplistIndex(zl,0), *sptr;
    double s;

    while (eptr != ((void*)0)) {
        sptr = ziplistNext(zl,eptr);
        serverAssert(sptr != ((void*)0));
        s = zzlGetScore(sptr);

        if (s > score) {



            zl = zzlInsertAt(zl,eptr,ele,score);
            break;
        } else if (s == score) {

            if (zzlCompareElements(eptr,(unsigned char*)ele,sdslen(ele)) > 0) {
                zl = zzlInsertAt(zl,eptr,ele,score);
                break;
            }
        }


        eptr = ziplistNext(zl,sptr);
    }


    if (eptr == ((void*)0))
        zl = zzlInsertAt(zl,((void*)0),ele,score);
    return zl;
}

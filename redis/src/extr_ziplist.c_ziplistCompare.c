
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int len; int headersize; int encoding; } ;
typedef TYPE_1__ zlentry ;


 unsigned char ZIP_END ;
 scalar_t__ ZIP_IS_STR (int ) ;
 scalar_t__ memcmp (unsigned char*,unsigned char*,unsigned int) ;
 int zipEntry (unsigned char*,TYPE_1__*) ;
 long long zipLoadInteger (unsigned char*,int ) ;
 scalar_t__ zipTryEncoding (unsigned char*,unsigned int,long long*,unsigned char*) ;

unsigned int ziplistCompare(unsigned char *p, unsigned char *sstr, unsigned int slen) {
    zlentry entry;
    unsigned char sencoding;
    long long zval, sval;
    if (p[0] == ZIP_END) return 0;

    zipEntry(p, &entry);
    if (ZIP_IS_STR(entry.encoding)) {

        if (entry.len == slen) {
            return memcmp(p+entry.headersize,sstr,slen) == 0;
        } else {
            return 0;
        }
    } else {


        if (zipTryEncoding(sstr,slen,&sval,&sencoding)) {
          zval = zipLoadInteger(p+entry.headersize,entry.encoding);
          return zval == sval;
        }
    }
    return 0;
}

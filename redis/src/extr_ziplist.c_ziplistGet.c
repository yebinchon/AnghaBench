
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int len; int headersize; int encoding; } ;
typedef TYPE_1__ zlentry ;


 unsigned char ZIP_END ;
 scalar_t__ ZIP_IS_STR (int ) ;
 int zipEntry (unsigned char*,TYPE_1__*) ;
 long long zipLoadInteger (unsigned char*,int ) ;

unsigned int ziplistGet(unsigned char *p, unsigned char **sstr, unsigned int *slen, long long *sval) {
    zlentry entry;
    if (p == ((void*)0) || p[0] == ZIP_END) return 0;
    if (sstr) *sstr = ((void*)0);

    zipEntry(p, &entry);
    if (ZIP_IS_STR(entry.encoding)) {
        if (sstr) {
            *slen = entry.len;
            *sstr = p+entry.headersize;
        }
    } else {
        if (sval) {
            *sval = zipLoadInteger(p+entry.headersize,entry.encoding);
        }
    }
    return 1;
}

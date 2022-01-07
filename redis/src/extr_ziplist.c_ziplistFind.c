
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char UCHAR_MAX ;
 int ZIP_DECODE_LENGTH (unsigned char*,unsigned int,unsigned int,unsigned int) ;
 int ZIP_DECODE_PREVLENSIZE (unsigned char*,unsigned int) ;
 unsigned char ZIP_END ;
 scalar_t__ ZIP_IS_STR (unsigned int) ;
 int assert (unsigned char) ;
 scalar_t__ memcmp (unsigned char*,unsigned char*,unsigned int) ;
 long long zipLoadInteger (unsigned char*,unsigned int) ;
 int zipTryEncoding (unsigned char*,unsigned int,long long*,unsigned char*) ;

unsigned char *ziplistFind(unsigned char *p, unsigned char *vstr, unsigned int vlen, unsigned int skip) {
    int skipcnt = 0;
    unsigned char vencoding = 0;
    long long vll = 0;

    while (p[0] != ZIP_END) {
        unsigned int prevlensize, encoding, lensize, len;
        unsigned char *q;

        ZIP_DECODE_PREVLENSIZE(p, prevlensize);
        ZIP_DECODE_LENGTH(p + prevlensize, encoding, lensize, len);
        q = p + prevlensize + lensize;

        if (skipcnt == 0) {

            if (ZIP_IS_STR(encoding)) {
                if (len == vlen && memcmp(q, vstr, vlen) == 0) {
                    return p;
                }
            } else {



                if (vencoding == 0) {
                    if (!zipTryEncoding(vstr, vlen, &vll, &vencoding)) {



                        vencoding = UCHAR_MAX;
                    }

                    assert(vencoding);
                }




                if (vencoding != UCHAR_MAX) {
                    long long ll = zipLoadInteger(q, encoding);
                    if (ll == vll) {
                        return p;
                    }
                }
            }


            skipcnt = skip;
        } else {

            skipcnt--;
        }


        p = q + len;
    }

    return ((void*)0);
}

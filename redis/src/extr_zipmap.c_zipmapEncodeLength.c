
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int len ;


 unsigned int ZIPMAP_BIGLEN ;
 unsigned int ZIPMAP_LEN_BYTES (unsigned int) ;
 int memcpy (unsigned char*,unsigned int*,int) ;
 int memrev32ifbe (unsigned char*) ;

__attribute__((used)) static unsigned int zipmapEncodeLength(unsigned char *p, unsigned int len) {
    if (p == ((void*)0)) {
        return ZIPMAP_LEN_BYTES(len);
    } else {
        if (len < ZIPMAP_BIGLEN) {
            p[0] = len;
            return 1;
        } else {
            p[0] = ZIPMAP_BIGLEN;
            memcpy(p+1,&len,sizeof(len));
            memrev32ifbe(p+1);
            return 1+sizeof(len);
        }
    }
}

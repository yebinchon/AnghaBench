
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int rio ;


 size_t lzf_compress (unsigned char*,size_t,void*,size_t) ;
 int rdbSaveLzfBlob (int *,void*,size_t,size_t) ;
 int zfree (void*) ;
 void* zmalloc (size_t) ;

ssize_t rdbSaveLzfStringObject(rio *rdb, unsigned char *s, size_t len) {
    size_t comprlen, outlen;
    void *out;


    if (len <= 4) return 0;
    outlen = len-4;
    if ((out = zmalloc(outlen+1)) == ((void*)0)) return 0;
    comprlen = lzf_compress(s, len, out, outlen);
    if (comprlen == 0) {
        zfree(out);
        return 0;
    }
    ssize_t nwritten = rdbSaveLzfBlob(rdb, out, comprlen, len);
    zfree(out);
    return nwritten;
}

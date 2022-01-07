
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int serverAssert (int) ;
 unsigned char* ziplistNext (unsigned char*,unsigned char*) ;

void zzlNext(unsigned char *zl, unsigned char **eptr, unsigned char **sptr) {
    unsigned char *_eptr, *_sptr;
    serverAssert(*eptr != ((void*)0) && *sptr != ((void*)0));

    _eptr = ziplistNext(zl,*sptr);
    if (_eptr != ((void*)0)) {
        _sptr = ziplistNext(zl,_eptr);
        serverAssert(_sptr != ((void*)0));
    } else {

        _sptr = ((void*)0);
    }

    *eptr = _eptr;
    *sptr = _sptr;
}

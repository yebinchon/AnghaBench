
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int serverAssert (int) ;
 unsigned char* ziplistPrev (unsigned char*,unsigned char*) ;

void zzlPrev(unsigned char *zl, unsigned char **eptr, unsigned char **sptr) {
    unsigned char *_eptr, *_sptr;
    serverAssert(*eptr != ((void*)0) && *sptr != ((void*)0));

    _sptr = ziplistPrev(zl,*eptr);
    if (_sptr != ((void*)0)) {
        _eptr = ziplistPrev(zl,_sptr);
        serverAssert(_eptr != ((void*)0));
    } else {

        _eptr = ((void*)0);
    }

    *eptr = _eptr;
    *sptr = _sptr;
}

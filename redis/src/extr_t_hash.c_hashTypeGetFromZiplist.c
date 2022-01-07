
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ sds ;
struct TYPE_3__ {scalar_t__ encoding; unsigned char* ptr; } ;
typedef TYPE_1__ robj ;


 scalar_t__ OBJ_ENCODING_ZIPLIST ;
 int ZIPLIST_HEAD ;
 int sdslen (scalar_t__) ;
 int serverAssert (int) ;
 unsigned char* ziplistFind (unsigned char*,unsigned char*,int ,int) ;
 int ziplistGet (unsigned char*,unsigned char**,unsigned int*,long long*) ;
 unsigned char* ziplistIndex (unsigned char*,int ) ;
 unsigned char* ziplistNext (unsigned char*,unsigned char*) ;

int hashTypeGetFromZiplist(robj *o, sds field,
                           unsigned char **vstr,
                           unsigned int *vlen,
                           long long *vll)
{
    unsigned char *zl, *fptr = ((void*)0), *vptr = ((void*)0);
    int ret;

    serverAssert(o->encoding == OBJ_ENCODING_ZIPLIST);

    zl = o->ptr;
    fptr = ziplistIndex(zl, ZIPLIST_HEAD);
    if (fptr != ((void*)0)) {
        fptr = ziplistFind(fptr, (unsigned char*)field, sdslen(field), 1);
        if (fptr != ((void*)0)) {

            vptr = ziplistNext(zl, fptr);
            serverAssert(vptr != ((void*)0));
        }
    }

    if (vptr != ((void*)0)) {
        ret = ziplistGet(vptr, vstr, vlen, vll);
        serverAssert(ret);
        return 0;
    }

    return -1;
}

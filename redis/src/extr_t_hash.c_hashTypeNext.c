
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ encoding; unsigned char* fptr; unsigned char* vptr; int di; int * de; TYPE_1__* subject; } ;
typedef TYPE_2__ hashTypeIterator ;
struct TYPE_4__ {unsigned char* ptr; } ;


 int C_ERR ;
 int C_OK ;
 scalar_t__ OBJ_ENCODING_HT ;
 scalar_t__ OBJ_ENCODING_ZIPLIST ;
 int * dictNext (int ) ;
 int serverAssert (int ) ;
 int serverPanic (char*) ;
 unsigned char* ziplistIndex (unsigned char*,int ) ;
 unsigned char* ziplistNext (unsigned char*,unsigned char*) ;

int hashTypeNext(hashTypeIterator *hi) {
    if (hi->encoding == OBJ_ENCODING_ZIPLIST) {
        unsigned char *zl;
        unsigned char *fptr, *vptr;

        zl = hi->subject->ptr;
        fptr = hi->fptr;
        vptr = hi->vptr;

        if (fptr == ((void*)0)) {

            serverAssert(vptr == ((void*)0));
            fptr = ziplistIndex(zl, 0);
        } else {

            serverAssert(vptr != ((void*)0));
            fptr = ziplistNext(zl, vptr);
        }
        if (fptr == ((void*)0)) return C_ERR;


        vptr = ziplistNext(zl, fptr);
        serverAssert(vptr != ((void*)0));


        hi->fptr = fptr;
        hi->vptr = vptr;
    } else if (hi->encoding == OBJ_ENCODING_HT) {
        if ((hi->de = dictNext(hi->di)) == ((void*)0)) return C_ERR;
    } else {
        serverPanic("Unknown hash encoding");
    }
    return C_OK;
}

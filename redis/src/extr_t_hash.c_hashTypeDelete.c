
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ sds ;
struct TYPE_3__ {scalar_t__ encoding; unsigned char* ptr; } ;
typedef TYPE_1__ robj ;
typedef int dict ;


 scalar_t__ C_OK ;
 scalar_t__ OBJ_ENCODING_HT ;
 scalar_t__ OBJ_ENCODING_ZIPLIST ;
 int ZIPLIST_HEAD ;
 scalar_t__ dictDelete (int *,scalar_t__) ;
 int dictResize (unsigned char*) ;
 scalar_t__ htNeedsResize (unsigned char*) ;
 int sdslen (scalar_t__) ;
 int serverPanic (char*) ;
 unsigned char* ziplistDelete (unsigned char*,unsigned char**) ;
 unsigned char* ziplistFind (unsigned char*,unsigned char*,int ,int) ;
 unsigned char* ziplistIndex (unsigned char*,int ) ;

int hashTypeDelete(robj *o, sds field) {
    int deleted = 0;

    if (o->encoding == OBJ_ENCODING_ZIPLIST) {
        unsigned char *zl, *fptr;

        zl = o->ptr;
        fptr = ziplistIndex(zl, ZIPLIST_HEAD);
        if (fptr != ((void*)0)) {
            fptr = ziplistFind(fptr, (unsigned char*)field, sdslen(field), 1);
            if (fptr != ((void*)0)) {
                zl = ziplistDelete(zl,&fptr);
                zl = ziplistDelete(zl,&fptr);
                o->ptr = zl;
                deleted = 1;
            }
        }
    } else if (o->encoding == OBJ_ENCODING_HT) {
        if (dictDelete((dict*)o->ptr, field) == C_OK) {
            deleted = 1;


            if (htNeedsResize(o->ptr)) dictResize(o->ptr);
        }

    } else {
        serverPanic("Unknown hash encoding");
    }
    return deleted;
}

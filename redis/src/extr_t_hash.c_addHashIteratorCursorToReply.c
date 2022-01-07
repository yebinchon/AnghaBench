
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned char* sds ;
struct TYPE_5__ {scalar_t__ encoding; } ;
typedef TYPE_1__ hashTypeIterator ;
typedef int client ;


 long long LLONG_MAX ;
 scalar_t__ OBJ_ENCODING_HT ;
 scalar_t__ OBJ_ENCODING_ZIPLIST ;
 unsigned int UINT_MAX ;
 int addReplyBulkCBuffer (int *,unsigned char*,unsigned int) ;
 int addReplyBulkLongLong (int *,long long) ;
 unsigned char* hashTypeCurrentFromHashTable (TYPE_1__*,int) ;
 int hashTypeCurrentFromZiplist (TYPE_1__*,int,unsigned char**,unsigned int*,long long*) ;
 unsigned int sdslen (unsigned char*) ;
 int serverPanic (char*) ;

__attribute__((used)) static void addHashIteratorCursorToReply(client *c, hashTypeIterator *hi, int what) {
    if (hi->encoding == OBJ_ENCODING_ZIPLIST) {
        unsigned char *vstr = ((void*)0);
        unsigned int vlen = UINT_MAX;
        long long vll = LLONG_MAX;

        hashTypeCurrentFromZiplist(hi, what, &vstr, &vlen, &vll);
        if (vstr)
            addReplyBulkCBuffer(c, vstr, vlen);
        else
            addReplyBulkLongLong(c, vll);
    } else if (hi->encoding == OBJ_ENCODING_HT) {
        sds value = hashTypeCurrentFromHashTable(hi, what);
        addReplyBulkCBuffer(c, value, sdslen(value));
    } else {
        serverPanic("Unknown hash encoding");
    }
}

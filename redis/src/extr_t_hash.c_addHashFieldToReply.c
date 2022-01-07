
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned char* sds ;
struct TYPE_5__ {scalar_t__ encoding; } ;
typedef TYPE_1__ robj ;
typedef int client ;


 long long LLONG_MAX ;
 scalar_t__ OBJ_ENCODING_HT ;
 scalar_t__ OBJ_ENCODING_ZIPLIST ;
 unsigned int UINT_MAX ;
 int addReplyBulkCBuffer (int *,unsigned char*,unsigned int) ;
 int addReplyBulkLongLong (int *,long long) ;
 int addReplyNull (int *) ;
 unsigned char* hashTypeGetFromHashTable (TYPE_1__*,unsigned char*) ;
 int hashTypeGetFromZiplist (TYPE_1__*,unsigned char*,unsigned char**,unsigned int*,long long*) ;
 unsigned int sdslen (unsigned char*) ;
 int serverPanic (char*) ;

__attribute__((used)) static void addHashFieldToReply(client *c, robj *o, sds field) {
    int ret;

    if (o == ((void*)0)) {
        addReplyNull(c);
        return;
    }

    if (o->encoding == OBJ_ENCODING_ZIPLIST) {
        unsigned char *vstr = ((void*)0);
        unsigned int vlen = UINT_MAX;
        long long vll = LLONG_MAX;

        ret = hashTypeGetFromZiplist(o, field, &vstr, &vlen, &vll);
        if (ret < 0) {
            addReplyNull(c);
        } else {
            if (vstr) {
                addReplyBulkCBuffer(c, vstr, vlen);
            } else {
                addReplyBulkLongLong(c, vll);
            }
        }

    } else if (o->encoding == OBJ_ENCODING_HT) {
        sds value = hashTypeGetFromHashTable(o, field);
        if (value == ((void*)0))
            addReplyNull(c);
        else
            addReplyBulkCBuffer(c, value, sdslen(value));
    } else {
        serverPanic("Unknown hash encoding");
    }
}

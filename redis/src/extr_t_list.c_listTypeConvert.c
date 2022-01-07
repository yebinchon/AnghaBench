
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; int encoding; int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_6__ {size_t list_max_ziplist_size; int list_compress_depth; } ;


 int OBJ_ENCODING_QUICKLIST ;
 int OBJ_ENCODING_ZIPLIST ;
 scalar_t__ OBJ_LIST ;
 int quicklistCreateFromZiplist (size_t,int,int ) ;
 TYPE_3__ server ;
 int serverAssertWithInfo (int *,TYPE_1__*,int) ;
 int serverPanic (char*) ;

void listTypeConvert(robj *subject, int enc) {
    serverAssertWithInfo(((void*)0),subject,subject->type==OBJ_LIST);
    serverAssertWithInfo(((void*)0),subject,subject->encoding==OBJ_ENCODING_ZIPLIST);

    if (enc == OBJ_ENCODING_QUICKLIST) {
        size_t zlen = server.list_max_ziplist_size;
        int depth = server.list_compress_depth;
        subject->ptr = quicklistCreateFromZiplist(zlen, depth, subject->ptr);
        subject->encoding = OBJ_ENCODING_QUICKLIST;
    } else {
        serverPanic("Unsupported list conversion");
    }
}

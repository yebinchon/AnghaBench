
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* ptr; scalar_t__ encoding; } ;
typedef TYPE_1__ robj ;
typedef int client ;
typedef int buf ;


 scalar_t__ C_OK ;
 scalar_t__ OBJ_ENCODING_INT ;
 int _addReplyProtoToList (int *,char*,size_t) ;
 scalar_t__ _addReplyToBuffer (int *,char*,size_t) ;
 size_t ll2string (char*,int,long) ;
 scalar_t__ prepareClientToWrite (int *) ;
 scalar_t__ sdsEncodedObject (TYPE_1__*) ;
 size_t sdslen (char*) ;
 int serverPanic (char*) ;

void addReply(client *c, robj *obj) {
    if (prepareClientToWrite(c) != C_OK) return;

    if (sdsEncodedObject(obj)) {
        if (_addReplyToBuffer(c,obj->ptr,sdslen(obj->ptr)) != C_OK)
            _addReplyProtoToList(c,obj->ptr,sdslen(obj->ptr));
    } else if (obj->encoding == OBJ_ENCODING_INT) {



        char buf[32];
        size_t len = ll2string(buf,sizeof(buf),(long)obj->ptr);
        if (_addReplyToBuffer(c,buf,len) != C_OK)
            _addReplyProtoToList(c,buf,len);
    } else {
        serverPanic("Wrong obj->encoding in addReply()");
    }
}

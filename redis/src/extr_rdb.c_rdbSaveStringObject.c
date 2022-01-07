
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_5__ {scalar_t__ encoding; scalar_t__ ptr; } ;
typedef TYPE_1__ robj ;
typedef int rio ;


 scalar_t__ OBJ_ENCODING_INT ;
 int rdbSaveLongLongAsStringObject (int *,long) ;
 int rdbSaveRawString (int *,scalar_t__,int ) ;
 int sdsEncodedObject (TYPE_1__*) ;
 int sdslen (scalar_t__) ;
 int serverAssertWithInfo (int *,TYPE_1__*,int ) ;

ssize_t rdbSaveStringObject(rio *rdb, robj *obj) {


    if (obj->encoding == OBJ_ENCODING_INT) {
        return rdbSaveLongLongAsStringObject(rdb,(long)obj->ptr);
    } else {
        serverAssertWithInfo(((void*)0),obj,sdsEncodedObject(obj));
        return rdbSaveRawString(rdb,obj->ptr,sdslen(obj->ptr));
    }
}

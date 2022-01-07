
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int robj ;


 size_t OBJ_ENCODING_EMBSTR_SIZE_LIMIT ;
 int * createEmbeddedStringObject (char const*,size_t) ;
 int * createRawStringObject (char const*,size_t) ;

robj *createStringObject(const char *ptr, size_t len) {
    if (len <= OBJ_ENCODING_EMBSTR_SIZE_LIMIT)
        return createEmbeddedStringObject(ptr,len);
    else
        return createRawStringObject(ptr,len);
}

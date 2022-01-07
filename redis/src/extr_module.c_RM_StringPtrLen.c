
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* ptr; } ;
typedef TYPE_1__ RedisModuleString ;


 size_t sdslen (char const*) ;
 size_t strlen (char const*) ;

const char *RM_StringPtrLen(const RedisModuleString *str, size_t *len) {
    if (str == ((void*)0)) {
        const char *errmsg = "(NULL string reply referenced in module)";
        if (len) *len = strlen(errmsg);
        return errmsg;
    }
    if (len) *len = sdslen(str->ptr);
    return str->ptr;
}

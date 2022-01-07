
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* sds ;


 int memcpy (char*,void const*,size_t) ;
 char* sdsMakeRoomFor (char*,size_t) ;
 size_t sdslen (char*) ;
 int sdssetlen (char*,size_t) ;

sds sdscatlen(sds s, const void *t, size_t len) {
    size_t curlen = sdslen(s);

    s = sdsMakeRoomFor(s,len);
    if (s == ((void*)0)) return ((void*)0);
    memcpy(s+curlen, t, len);
    sdssetlen(s, curlen+len);
    s[curlen+len] = '\0';
    return s;
}

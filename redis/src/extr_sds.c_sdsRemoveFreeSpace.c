
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* sds ;


 char SDS_TYPE_8 ;
 char SDS_TYPE_MASK ;
 int memcpy (char*,char*,size_t) ;
 int s_free (void*) ;
 void* s_malloc (int) ;
 void* s_realloc (void*,int) ;
 int sdsHdrSize (char) ;
 char sdsReqType (size_t) ;
 size_t sdsavail (char*) ;
 size_t sdslen (char*) ;
 int sdssetalloc (char*,size_t) ;
 int sdssetlen (char*,size_t) ;

sds sdsRemoveFreeSpace(sds s) {
    void *sh, *newsh;
    char type, oldtype = s[-1] & SDS_TYPE_MASK;
    int hdrlen, oldhdrlen = sdsHdrSize(oldtype);
    size_t len = sdslen(s);
    size_t avail = sdsavail(s);
    sh = (char*)s-oldhdrlen;


    if (avail == 0) return s;



    type = sdsReqType(len);
    hdrlen = sdsHdrSize(type);





    if (oldtype==type || type > SDS_TYPE_8) {
        newsh = s_realloc(sh, oldhdrlen+len+1);
        if (newsh == ((void*)0)) return ((void*)0);
        s = (char*)newsh+oldhdrlen;
    } else {
        newsh = s_malloc(hdrlen+len+1);
        if (newsh == ((void*)0)) return ((void*)0);
        memcpy((char*)newsh+hdrlen, s, len+1);
        s_free(sh);
        s = (char*)newsh+hdrlen;
        s[-1] = type;
        sdssetlen(s, len);
    }
    sdssetalloc(s, len);
    return s;
}

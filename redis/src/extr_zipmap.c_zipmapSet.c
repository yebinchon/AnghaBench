
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char ZIPMAP_BIGLEN ;
 unsigned int ZIPMAP_VALUE_MAX_FREE ;
 int memcpy (unsigned char*,unsigned char*,unsigned int) ;
 int memmove (unsigned char*,unsigned char*,unsigned int) ;
 int zipmapEncodeLength (unsigned char*,unsigned int) ;
 unsigned char* zipmapLookupRaw (unsigned char*,unsigned char*,unsigned int,unsigned int*) ;
 unsigned int zipmapRawEntryLength (unsigned char*) ;
 unsigned int zipmapRequiredLength (unsigned int,unsigned int) ;
 unsigned char* zipmapResize (unsigned char*,unsigned int) ;

unsigned char *zipmapSet(unsigned char *zm, unsigned char *key, unsigned int klen, unsigned char *val, unsigned int vlen, int *update) {
    unsigned int zmlen, offset;
    unsigned int freelen, reqlen = zipmapRequiredLength(klen,vlen);
    unsigned int empty, vempty;
    unsigned char *p;

    freelen = reqlen;
    if (update) *update = 0;
    p = zipmapLookupRaw(zm,key,klen,&zmlen);
    if (p == ((void*)0)) {

        zm = zipmapResize(zm, zmlen+reqlen);
        p = zm+zmlen-1;
        zmlen = zmlen+reqlen;


        if (zm[0] < ZIPMAP_BIGLEN) zm[0]++;
    } else {


        if (update) *update = 1;
        freelen = zipmapRawEntryLength(p);
        if (freelen < reqlen) {



            offset = p-zm;
            zm = zipmapResize(zm, zmlen-freelen+reqlen);
            p = zm+offset;



            memmove(p+reqlen, p+freelen, zmlen-(offset+freelen+1));
            zmlen = zmlen-freelen+reqlen;
            freelen = reqlen;
        }
    }





    empty = freelen-reqlen;
    if (empty >= ZIPMAP_VALUE_MAX_FREE) {


        offset = p-zm;
        memmove(p+reqlen, p+freelen, zmlen-(offset+freelen+1));
        zmlen -= empty;
        zm = zipmapResize(zm, zmlen);
        p = zm+offset;
        vempty = 0;
    } else {
        vempty = empty;
    }



    p += zipmapEncodeLength(p,klen);
    memcpy(p,key,klen);
    p += klen;

    p += zipmapEncodeLength(p,vlen);
    *p++ = vempty;
    memcpy(p,val,vlen);
    return zm;
}

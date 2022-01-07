
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;


typedef char* sds ;
struct TYPE_16__ {char* ptr; scalar_t__ type; } ;
typedef TYPE_1__ robj ;
typedef int redisDb ;


 scalar_t__ OBJ_HASH ;
 scalar_t__ OBJ_STRING ;
 TYPE_1__* createStringObject (char*,int) ;
 int decrRefCount (TYPE_1__*) ;
 TYPE_1__* getDecodedObject (TYPE_1__*) ;
 TYPE_1__* hashTypeGetValueObject (TYPE_1__*,char*) ;
 int incrRefCount (TYPE_1__*) ;
 TYPE_1__* lookupKeyRead (int *,TYPE_1__*) ;
 TYPE_1__* lookupKeyWrite (int *,TYPE_1__*) ;
 int memcpy (char*,char*,int) ;
 int sdslen (char*) ;
 char* strchr (char*,char) ;
 char* strstr (char*,char*) ;

robj *lookupKeyByPattern(redisDb *db, robj *pattern, robj *subst, int writeflag) {
    char *p, *f, *k;
    sds spat, ssub;
    robj *keyobj, *fieldobj = ((void*)0), *o;
    int prefixlen, sublen, postfixlen, fieldlen;



    spat = pattern->ptr;
    if (spat[0] == '#' && spat[1] == '\0') {
        incrRefCount(subst);
        return subst;
    }




    subst = getDecodedObject(subst);
    ssub = subst->ptr;



    p = strchr(spat,'*');
    if (!p) {
        decrRefCount(subst);
        return ((void*)0);
    }


    if ((f = strstr(p+1, "->")) != ((void*)0) && *(f+2) != '\0') {
        fieldlen = sdslen(spat)-(f-spat)-2;
        fieldobj = createStringObject(f+2,fieldlen);
    } else {
        fieldlen = 0;
    }


    prefixlen = p-spat;
    sublen = sdslen(ssub);
    postfixlen = sdslen(spat)-(prefixlen+1)-(fieldlen ? fieldlen+2 : 0);
    keyobj = createStringObject(((void*)0),prefixlen+sublen+postfixlen);
    k = keyobj->ptr;
    memcpy(k,spat,prefixlen);
    memcpy(k+prefixlen,ssub,sublen);
    memcpy(k+prefixlen+sublen,p+1,postfixlen);
    decrRefCount(subst);


    if (!writeflag)
        o = lookupKeyRead(db,keyobj);
    else
        o = lookupKeyWrite(db,keyobj);
    if (o == ((void*)0)) goto noobj;

    if (fieldobj) {
        if (o->type != OBJ_HASH) goto noobj;



        o = hashTypeGetValueObject(o, fieldobj->ptr);
    } else {
        if (o->type != OBJ_STRING) goto noobj;



        incrRefCount(o);
    }
    decrRefCount(keyobj);
    if (fieldobj) decrRefCount(fieldobj);
    return o;

noobj:
    decrRefCount(keyobj);
    if (fieldlen) decrRefCount(fieldobj);
    return ((void*)0);
}

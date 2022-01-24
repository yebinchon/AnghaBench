#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  char* sds ;
struct TYPE_16__ {char* ptr; scalar_t__ type; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  redisDb ;

/* Variables and functions */
 scalar_t__ OBJ_HASH ; 
 scalar_t__ OBJ_STRING ; 
 TYPE_1__* FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int FUNC8 (char*) ; 
 char* FUNC9 (char*,char) ; 
 char* FUNC10 (char*,char*) ; 

robj *FUNC11(redisDb *db, robj *pattern, robj *subst, int writeflag) {
    char *p, *f, *k;
    sds spat, ssub;
    robj *keyobj, *fieldobj = NULL, *o;
    int prefixlen, sublen, postfixlen, fieldlen;

    /* If the pattern is "#" return the substitution object itself in order
     * to implement the "SORT ... GET #" feature. */
    spat = pattern->ptr;
    if (spat[0] == '#' && spat[1] == '\0') {
        FUNC4(subst);
        return subst;
    }

    /* The substitution object may be specially encoded. If so we create
     * a decoded object on the fly. Otherwise getDecodedObject will just
     * increment the ref count, that we'll decrement later. */
    subst = FUNC2(subst);
    ssub = subst->ptr;

    /* If we can't find '*' in the pattern we return NULL as to GET a
     * fixed key does not make sense. */
    p = FUNC9(spat,'*');
    if (!p) {
        FUNC1(subst);
        return NULL;
    }

    /* Find out if we're dealing with a hash dereference. */
    if ((f = FUNC10(p+1, "->")) != NULL && *(f+2) != '\0') {
        fieldlen = FUNC8(spat)-(f-spat)-2;
        fieldobj = FUNC0(f+2,fieldlen);
    } else {
        fieldlen = 0;
    }

    /* Perform the '*' substitution. */
    prefixlen = p-spat;
    sublen = FUNC8(ssub);
    postfixlen = FUNC8(spat)-(prefixlen+1)-(fieldlen ? fieldlen+2 : 0);
    keyobj = FUNC0(NULL,prefixlen+sublen+postfixlen);
    k = keyobj->ptr;
    FUNC7(k,spat,prefixlen);
    FUNC7(k+prefixlen,ssub,sublen);
    FUNC7(k+prefixlen+sublen,p+1,postfixlen);
    FUNC1(subst); /* Incremented by decodeObject() */

    /* Lookup substituted key */
    if (!writeflag)
        o = FUNC5(db,keyobj);
    else
        o = FUNC6(db,keyobj);
    if (o == NULL) goto noobj;

    if (fieldobj) {
        if (o->type != OBJ_HASH) goto noobj;

        /* Retrieve value from hash by the field name. The returend object
         * is a new object with refcount already incremented. */
        o = FUNC3(o, fieldobj->ptr);
    } else {
        if (o->type != OBJ_STRING) goto noobj;

        /* Every object that this function returns needs to have its refcount
         * increased. sortCommand decreases it again. */
        FUNC4(o);
    }
    FUNC1(keyobj);
    if (fieldobj) FUNC1(fieldobj);
    return o;

noobj:
    FUNC1(keyobj);
    if (fieldlen) FUNC1(fieldobj);
    return NULL;
}
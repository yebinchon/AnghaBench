#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  void* sds ;
struct TYPE_13__ {scalar_t__ type; int refcount; scalar_t__ encoding; void* ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_15__ {scalar_t__ maxmemory; int maxmemory_policy; } ;
struct TYPE_14__ {TYPE_1__** integers; } ;

/* Variables and functions */
 int MAXMEMORY_FLAG_NO_SHARED_INTEGERS ; 
 scalar_t__ OBJ_ENCODING_EMBSTR ; 
 size_t OBJ_ENCODING_EMBSTR_SIZE_LIMIT ; 
 scalar_t__ OBJ_ENCODING_INT ; 
 scalar_t__ OBJ_ENCODING_RAW ; 
 long OBJ_SHARED_INTEGERS ; 
 scalar_t__ OBJ_STRING ; 
 TYPE_1__* FUNC0 (void*,size_t) ; 
 TYPE_1__* FUNC1 (long) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 size_t FUNC6 (void*) ; 
 TYPE_7__ server ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 TYPE_5__ shared ; 
 scalar_t__ FUNC8 (void*,size_t,long*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

robj *FUNC10(robj *o) {
    long value;
    sds s = o->ptr;
    size_t len;

    /* Make sure this is a string object, the only type we encode
     * in this function. Other types use encoded memory efficient
     * representations but are handled by the commands implementing
     * the type. */
    FUNC7(NULL,o,o->type == OBJ_STRING);

    /* We try some specialized encoding only for objects that are
     * RAW or EMBSTR encoded, in other words objects that are still
     * in represented by an actually array of chars. */
    if (!FUNC4(o)) return o;

    /* It's not safe to encode shared objects: shared objects can be shared
     * everywhere in the "object space" of Redis and may end in places where
     * they are not handled. We handle them only as values in the keyspace. */
     if (o->refcount > 1) return o;

    /* Check if we can represent this string as a long integer.
     * Note that we are sure that a string larger than 20 chars is not
     * representable as a 32 nor 64 bit integer. */
    len = FUNC6(s);
    if (len <= 20 && FUNC8(s,len,&value)) {
        /* This object is encodable as a long. Try to use a shared object.
         * Note that we avoid using shared integers when maxmemory is used
         * because every object needs to have a private LRU field for the LRU
         * algorithm to work well. */
        if ((server.maxmemory == 0 ||
            !(server.maxmemory_policy & MAXMEMORY_FLAG_NO_SHARED_INTEGERS)) &&
            value >= 0 &&
            value < OBJ_SHARED_INTEGERS)
        {
            FUNC2(o);
            FUNC3(shared.integers[value]);
            return shared.integers[value];
        } else {
            if (o->encoding == OBJ_ENCODING_RAW) {
                FUNC5(o->ptr);
                o->encoding = OBJ_ENCODING_INT;
                o->ptr = (void*) value;
                return o;
            } else if (o->encoding == OBJ_ENCODING_EMBSTR) {
                FUNC2(o);
                return FUNC1(value);
            }
        }
    }

    /* If the string is small and is still RAW encoded,
     * try the EMBSTR encoding which is more efficient.
     * In this representation the object and the SDS string are allocated
     * in the same chunk of memory to save space and cache misses. */
    if (len <= OBJ_ENCODING_EMBSTR_SIZE_LIMIT) {
        robj *emb;

        if (o->encoding == OBJ_ENCODING_EMBSTR) return o;
        emb = FUNC0(s,FUNC6(s));
        FUNC2(o);
        return emb;
    }

    /* We can't encode the object...
     *
     * Do the last try, and at least optimize the SDS string inside
     * the string object to require little space, in case there
     * is more than 10% of free space at the end of the SDS string.
     *
     * We do that only for relatively large strings as this branch
     * is only entered if the length of the string is greater than
     * OBJ_ENCODING_EMBSTR_SIZE_LIMIT. */
    FUNC9(o);

    /* Return the original object. */
    return o;
}
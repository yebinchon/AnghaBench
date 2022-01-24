#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 unsigned char ZIPMAP_BIGLEN ; 
 unsigned int ZIPMAP_VALUE_MAX_FREE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned int) ; 
 unsigned char* FUNC3 (unsigned char*,unsigned char*,unsigned int,unsigned int*) ; 
 unsigned int FUNC4 (unsigned char*) ; 
 unsigned int FUNC5 (unsigned int,unsigned int) ; 
 unsigned char* FUNC6 (unsigned char*,unsigned int) ; 

unsigned char *FUNC7(unsigned char *zm, unsigned char *key, unsigned int klen, unsigned char *val, unsigned int vlen, int *update) {
    unsigned int zmlen, offset;
    unsigned int freelen, reqlen = FUNC5(klen,vlen);
    unsigned int empty, vempty;
    unsigned char *p;

    freelen = reqlen;
    if (update) *update = 0;
    p = FUNC3(zm,key,klen,&zmlen);
    if (p == NULL) {
        /* Key not found: enlarge */
        zm = FUNC6(zm, zmlen+reqlen);
        p = zm+zmlen-1;
        zmlen = zmlen+reqlen;

        /* Increase zipmap length (this is an insert) */
        if (zm[0] < ZIPMAP_BIGLEN) zm[0]++;
    } else {
        /* Key found. Is there enough space for the new value? */
        /* Compute the total length: */
        if (update) *update = 1;
        freelen = FUNC4(p);
        if (freelen < reqlen) {
            /* Store the offset of this key within the current zipmap, so
             * it can be resized. Then, move the tail backwards so this
             * pair fits at the current position. */
            offset = p-zm;
            zm = FUNC6(zm, zmlen-freelen+reqlen);
            p = zm+offset;

            /* The +1 in the number of bytes to be moved is caused by the
             * end-of-zipmap byte. Note: the *original* zmlen is used. */
            FUNC1(p+reqlen, p+freelen, zmlen-(offset+freelen+1));
            zmlen = zmlen-freelen+reqlen;
            freelen = reqlen;
        }
    }

    /* We now have a suitable block where the key/value entry can
     * be written. If there is too much free space, move the tail
     * of the zipmap a few bytes to the front and shrink the zipmap,
     * as we want zipmaps to be very space efficient. */
    empty = freelen-reqlen;
    if (empty >= ZIPMAP_VALUE_MAX_FREE) {
        /* First, move the tail <empty> bytes to the front, then resize
         * the zipmap to be <empty> bytes smaller. */
        offset = p-zm;
        FUNC1(p+reqlen, p+freelen, zmlen-(offset+freelen+1));
        zmlen -= empty;
        zm = FUNC6(zm, zmlen);
        p = zm+offset;
        vempty = 0;
    } else {
        vempty = empty;
    }

    /* Just write the key + value and we are done. */
    /* Key: */
    p += FUNC2(p,klen);
    FUNC0(p,key,klen);
    p += klen;
    /* Value: */
    p += FUNC2(p,vlen);
    *p++ = vempty;
    FUNC0(p,val,vlen);
    return zm;
}
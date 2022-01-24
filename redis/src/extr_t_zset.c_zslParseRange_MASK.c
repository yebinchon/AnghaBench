#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int minex; int maxex; long min; long max; } ;
typedef  TYPE_1__ zrangespec ;
struct TYPE_7__ {scalar_t__ encoding; scalar_t__ ptr; } ;
typedef  TYPE_2__ robj ;

/* Variables and functions */
 int C_ERR ; 
 int C_OK ; 
 scalar_t__ OBJ_ENCODING_INT ; 
 scalar_t__ FUNC0 (long) ; 
 void* FUNC1 (char*,char**) ; 

__attribute__((used)) static int FUNC2(robj *min, robj *max, zrangespec *spec) {
    char *eptr;
    spec->minex = spec->maxex = 0;

    /* Parse the min-max interval. If one of the values is prefixed
     * by the "(" character, it's considered "open". For instance
     * ZRANGEBYSCORE zset (1.5 (2.5 will match min < x < max
     * ZRANGEBYSCORE zset 1.5 2.5 will instead match min <= x <= max */
    if (min->encoding == OBJ_ENCODING_INT) {
        spec->min = (long)min->ptr;
    } else {
        if (((char*)min->ptr)[0] == '(') {
            spec->min = FUNC1((char*)min->ptr+1,&eptr);
            if (eptr[0] != '\0' || FUNC0(spec->min)) return C_ERR;
            spec->minex = 1;
        } else {
            spec->min = FUNC1((char*)min->ptr,&eptr);
            if (eptr[0] != '\0' || FUNC0(spec->min)) return C_ERR;
        }
    }
    if (max->encoding == OBJ_ENCODING_INT) {
        spec->max = (long)max->ptr;
    } else {
        if (((char*)max->ptr)[0] == '(') {
            spec->max = FUNC1((char*)max->ptr+1,&eptr);
            if (eptr[0] != '\0' || FUNC0(spec->max)) return C_ERR;
            spec->maxex = 1;
        } else {
            spec->max = FUNC1((char*)max->ptr,&eptr);
            if (eptr[0] != '\0' || FUNC0(spec->max)) return C_ERR;
        }
    }

    return C_OK;
}
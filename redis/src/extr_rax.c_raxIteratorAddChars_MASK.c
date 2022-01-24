#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t key_max; size_t key_len; unsigned char* key; unsigned char* key_static_string; } ;
typedef  TYPE_1__ raxIterator ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,size_t) ; 
 unsigned char* FUNC2 (unsigned char*,size_t) ; 

int FUNC3(raxIterator *it, unsigned char *s, size_t len) {
    if (it->key_max < it->key_len+len) {
        unsigned char *old = (it->key == it->key_static_string) ? NULL :
                                                                  it->key;
        size_t new_max = (it->key_len+len)*2;
        it->key = FUNC2(old,new_max);
        if (it->key == NULL) {
            it->key = (!old) ? it->key_static_string : old;
            errno = ENOMEM;
            return 0;
        }
        if (old == NULL) FUNC0(it->key,it->key_static_string,it->key_len);
        it->key_max = new_max;
    }
    /* Use memmove since there could be an overlap between 's' and
     * it->key when we use the current key in order to re-seek. */
    FUNC1(it->key+it->key_len,s,len);
    it->key_len += len;
    return 1;
}
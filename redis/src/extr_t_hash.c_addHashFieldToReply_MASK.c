#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned char* sds ;
struct TYPE_5__ {scalar_t__ encoding; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  client ;

/* Variables and functions */
 long long LLONG_MAX ; 
 scalar_t__ OBJ_ENCODING_HT ; 
 scalar_t__ OBJ_ENCODING_ZIPLIST ; 
 unsigned int UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,long long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC3 (TYPE_1__*,unsigned char*) ; 
 int FUNC4 (TYPE_1__*,unsigned char*,unsigned char**,unsigned int*,long long*) ; 
 unsigned int FUNC5 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(client *c, robj *o, sds field) {
    int ret;

    if (o == NULL) {
        FUNC2(c);
        return;
    }

    if (o->encoding == OBJ_ENCODING_ZIPLIST) {
        unsigned char *vstr = NULL;
        unsigned int vlen = UINT_MAX;
        long long vll = LLONG_MAX;

        ret = FUNC4(o, field, &vstr, &vlen, &vll);
        if (ret < 0) {
            FUNC2(c);
        } else {
            if (vstr) {
                FUNC0(c, vstr, vlen);
            } else {
                FUNC1(c, vll);
            }
        }

    } else if (o->encoding == OBJ_ENCODING_HT) {
        sds value = FUNC3(o, field);
        if (value == NULL)
            FUNC2(c);
        else
            FUNC0(c, value, FUNC5(value));
    } else {
        FUNC6("Unknown hash encoding");
    }
}
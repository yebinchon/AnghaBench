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
typedef  TYPE_1__ hashTypeIterator ;
typedef  int /*<<< orphan*/  client ;

/* Variables and functions */
 long long LLONG_MAX ; 
 scalar_t__ OBJ_ENCODING_HT ; 
 scalar_t__ OBJ_ENCODING_ZIPLIST ; 
 unsigned int UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,long long) ; 
 unsigned char* FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,unsigned char**,unsigned int*,long long*) ; 
 unsigned int FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(client *c, hashTypeIterator *hi, int what) {
    if (hi->encoding == OBJ_ENCODING_ZIPLIST) {
        unsigned char *vstr = NULL;
        unsigned int vlen = UINT_MAX;
        long long vll = LLONG_MAX;

        FUNC3(hi, what, &vstr, &vlen, &vll);
        if (vstr)
            FUNC0(c, vstr, vlen);
        else
            FUNC1(c, vll);
    } else if (hi->encoding == OBJ_ENCODING_HT) {
        sds value = FUNC2(hi, what);
        FUNC0(c, value, FUNC4(value));
    } else {
        FUNC5("Unknown hash encoding");
    }
}
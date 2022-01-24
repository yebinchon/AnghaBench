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
struct TYPE_3__ {char* ptr; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  client ;

/* Variables and functions */
 int C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,long long*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(client *c, robj *o, int *sign, int *bits) {
    char *p = o->ptr;
    char *err = "Invalid bitfield type. Use something like i16 u8. Note that u64 is not supported but i64 is.";
    long long llbits;

    if (p[0] == 'i') {
        *sign = 1;
    } else if (p[0] == 'u') {
        *sign = 0;
    } else {
        FUNC0(c,err);
        return C_ERR;
    }

    if ((FUNC1(p+1,FUNC2(p+1),&llbits)) == 0 ||
        llbits < 1 ||
        (*sign == 1 && llbits > 64) ||
        (*sign == 0 && llbits > 63))
    {
        FUNC0(c,err);
        return C_ERR;
    }
    *bits = llbits;
    return C_OK;
}
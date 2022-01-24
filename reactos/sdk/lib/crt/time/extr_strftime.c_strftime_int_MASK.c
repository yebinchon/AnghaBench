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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 size_t FUNC1 (char*,size_t,char*,int,int) ; 

__attribute__((used)) static inline BOOL FUNC2(char *str, size_t *pos, size_t max,
        int src, int prec, int l, int h)
{
    size_t len;

    if(src<l || src>h) {
        *str = 0;
        *FUNC0() = EINVAL;
        return FALSE;
    }

    len = FUNC1(str+*pos, max-*pos, "%0*d", prec, src);
    if(len == -1) {
        *str = 0;
        *FUNC0() = ERANGE;
        return FALSE;
    }

    *pos += len;
    return TRUE;
}
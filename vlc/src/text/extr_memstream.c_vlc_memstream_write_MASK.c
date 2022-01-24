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
struct vlc_memstream {size_t length; char* ptr; int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  EOF ; 
 int /*<<< orphan*/  FUNC0 (size_t,int,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (char*,void const*,size_t) ; 
 char* FUNC2 (char*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

size_t FUNC4(struct vlc_memstream *ms, const void *ptr,
                           size_t len)
{
    size_t newlen;

    if (FUNC3(FUNC0(ms->length, len, &newlen))
     || FUNC3(FUNC0(newlen, 1, &newlen)))
        goto error;

    char *base = FUNC2(ms->ptr, newlen);
    if (FUNC3(base == NULL))
        goto error;

    FUNC1(base + ms->length, ptr, len);
    ms->ptr = base;
    ms->length += len;
    base[ms->length] = '\0';
    return len;

error:
    ms->error = EOF;
    return 0;
}
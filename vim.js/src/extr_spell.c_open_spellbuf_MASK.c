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
struct TYPE_5__ {int /*<<< orphan*/  b_p_key; void* b_p_swf; void* b_spell; } ;
typedef  TYPE_1__ buf_T ;

/* Variables and functions */
 void* TRUE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  empty_option ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static buf_T *
FUNC3()
{
    buf_T	*buf;

    buf = (buf_T *)FUNC0(sizeof(buf_T));
    if (buf != NULL)
    {
	buf->b_spell = TRUE;
	buf->b_p_swf = TRUE;	/* may create a swap file */
#ifdef FEAT_CRYPT
	buf->b_p_key = empty_option;
#endif
	FUNC1(buf);
	FUNC2(buf);	/* create swap file now */
    }
    return buf;
}
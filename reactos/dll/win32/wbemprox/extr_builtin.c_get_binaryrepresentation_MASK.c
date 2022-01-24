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
struct array {int count; int /*<<< orphan*/ * ptr; } ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  PSID ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct array*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct array *FUNC3( PSID sid, UINT len )
{
    struct array *array = FUNC0( sizeof(struct array) );
    if (array)
    {
        UINT8 *ret = FUNC0( len );
        if (ret)
        {
            FUNC2( ret, sid, len );
            array->count = len;
            array->ptr = ret;
            return array;
        }
        FUNC1( array );
    }
    return NULL;
}
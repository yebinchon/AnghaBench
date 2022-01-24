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
struct cond_str {int len; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__* LPWSTR ;
typedef  int /*<<< orphan*/  COND_input ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__,int) ; 

__attribute__((used)) static LPWSTR FUNC4( COND_input *cond, const struct cond_str *str )
{
    LPWSTR ret;

    ret = FUNC1( cond, (str->len-1) * sizeof (WCHAR) );
    if( ret )
    {
        FUNC3( ret, str->data+1, (str->len-2) * sizeof(WCHAR) );
        ret[str->len - 2]=0;
    }
    FUNC0("Got literal %s\n",FUNC2(ret));
    return ret;
}
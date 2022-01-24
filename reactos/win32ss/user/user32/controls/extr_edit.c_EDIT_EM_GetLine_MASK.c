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
typedef  scalar_t__ WORD ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_5__ {int style; scalar_t__ line_count; scalar_t__ text; } ;
typedef  scalar_t__* LPWSTR ;
typedef  scalar_t__* LPSTR ;
typedef  scalar_t__ INT ;
typedef  TYPE_1__ EDITSTATE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_1__*,scalar_t__) ; 
 int ES_MULTILINE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__,scalar_t__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*,scalar_t__) ; 

__attribute__((used)) static INT FUNC4(EDITSTATE *es, INT line, LPWSTR dst, BOOL unicode)
{
	LPWSTR src;
	INT line_len, dst_len;
	INT i;

	if (es->style & ES_MULTILINE) {
		if (line >= es->line_count)
			return 0;
	} else
		line = 0;
	i = FUNC0(es, line);
	src = es->text + i;
	line_len = FUNC1(es, i);
	dst_len = *(WORD *)dst;
	if(unicode)
	{
	    if(dst_len <= line_len)
	    {
		FUNC3(dst, src, dst_len * sizeof(WCHAR));
		return dst_len;
	    }
	    else /* Append 0 if enough space */
	    {
		FUNC3(dst, src, line_len * sizeof(WCHAR));
		dst[line_len] = 0;
		return line_len;
	    }
	}
	else
	{
	    INT ret = FUNC2(CP_ACP, 0, src, line_len, (LPSTR)dst, dst_len, NULL, NULL);
	    if(!ret && line_len) /* Insufficient buffer size */
		return dst_len;
	    if(ret < dst_len) /* Append 0 if enough space */
		((LPSTR)dst)[ret] = 0;
	    return ret;
	}
}
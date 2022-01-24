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
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  SCODE ;
typedef  char const* LPCSTR ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  SCRIPTITEM_GLOBALMEMBERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const char *src, SCODE errorcode, ULONG line, LONG pos, LPCSTR source, LPCSTR desc, LPCSTR linetext)
{
    BSTR tmp, script_source, description, line_text;

    tmp = FUNC1(src);
    script_source = FUNC1(source);
    description = FUNC1(desc);
    line_text = FUNC1(linetext);

    FUNC2(SCRIPTITEM_GLOBALMEMBERS, tmp, errorcode, line, pos, script_source, description, line_text);

    FUNC0(line_text);
    FUNC0(description);
    FUNC0(script_source);
    FUNC0(tmp);
}
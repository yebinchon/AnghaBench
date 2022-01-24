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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int (* pfnWordBreak ) (int /*<<< orphan*/ *,int,int,int) ;int /*<<< orphan*/  bEmulateVersion10; } ;
typedef  TYPE_1__ ME_TextEditor ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int,int) ; 

int
FUNC6(ME_TextEditor *editor, WCHAR *str, INT len, INT start, INT code)
{
  if (!editor->pfnWordBreak) {
    return FUNC0(str, start, len, code);
  } else if (!editor->bEmulateVersion10) {
    /* MSDN lied about the third parameter for EditWordBreakProc being the number
     * of characters, it is actually the number of bytes of the string. */
    return editor->pfnWordBreak(str, start, len * sizeof(WCHAR), code);
  } else {
    int result;
    int buffer_size = FUNC1(CP_ACP, 0, str, len,
                                          NULL, 0, NULL, NULL);
    char *buffer = FUNC2(buffer_size);
    if (!buffer) return 0;
    FUNC1(CP_ACP, 0, str, len,
                        buffer, buffer_size, NULL, NULL);
    result = editor->pfnWordBreak((WCHAR*)buffer, start, buffer_size, code);
    FUNC3(buffer);
    return result;
  }
}
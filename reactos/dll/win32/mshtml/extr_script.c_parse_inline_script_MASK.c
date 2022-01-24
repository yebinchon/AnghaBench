#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsAString ;
struct TYPE_4__ {int /*<<< orphan*/  nsscript; } ;
typedef  int /*<<< orphan*/  ScriptHost ;
typedef  scalar_t__ PRUnichar ;
typedef  TYPE_1__ HTMLScriptElement ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__ const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__ const*) ; 

__attribute__((used)) static void FUNC7(ScriptHost *script_host, HTMLScriptElement *script_elem)
{
    const PRUnichar *text;
    nsAString text_str;
    nsresult nsres;

    FUNC4(&text_str, NULL);
    nsres = FUNC5(script_elem->nsscript, &text_str);
    FUNC3(&text_str, &text);

    if(FUNC1(nsres)) {
        FUNC0("GetText failed: %08x\n", nsres);
    }else if(*text) {
        FUNC6(script_host, script_elem, text);
    }

    FUNC2(&text_str);
}
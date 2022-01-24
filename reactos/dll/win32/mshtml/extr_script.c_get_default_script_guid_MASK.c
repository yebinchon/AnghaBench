#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  guid; } ;
struct TYPE_4__ {int /*<<< orphan*/  script_hosts; } ;
typedef  TYPE_1__ HTMLInnerWindow ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_JScript ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ScriptHost ; 
 int /*<<< orphan*/  entry ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static GUID FUNC3(HTMLInnerWindow *window)
{
    /* If not specified, we should use very first script host that was created for the page (or JScript if none) */
    return FUNC1(&window->script_hosts)
        ? CLSID_JScript
        : FUNC0(FUNC2(&window->script_hosts), ScriptHost, entry)->guid;
}
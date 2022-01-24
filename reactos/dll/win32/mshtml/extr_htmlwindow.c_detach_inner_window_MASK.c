#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  IHTMLWindow2_iface; TYPE_7__* outer_window; } ;
struct TYPE_21__ {TYPE_6__ base; int /*<<< orphan*/  task_magic; TYPE_11__* doc; } ;
struct TYPE_18__ {TYPE_8__* inner_window; } ;
struct TYPE_20__ {TYPE_5__ base; TYPE_2__* doc_obj; } ;
struct TYPE_16__ {int /*<<< orphan*/ * forward_container; } ;
struct TYPE_17__ {TYPE_3__ cp_container; } ;
struct TYPE_14__ {TYPE_7__* window; } ;
struct TYPE_15__ {TYPE_1__ basedoc; } ;
struct TYPE_13__ {int /*<<< orphan*/  plugin_hosts; TYPE_4__ basedoc; } ;
typedef  TYPE_7__ HTMLOuterWindow ;
typedef  TYPE_8__ HTMLInnerWindow ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PluginHost ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(HTMLInnerWindow *window)
{
    HTMLOuterWindow *outer_window = window->base.outer_window;

    if(outer_window && outer_window->doc_obj && outer_window == outer_window->doc_obj->basedoc.window)
        window->doc->basedoc.cp_container.forward_container = NULL;

    if(window->doc) {
        FUNC3(window->doc);
        while(!FUNC5(&window->doc->plugin_hosts))
            FUNC4(FUNC1(FUNC6(&window->doc->plugin_hosts), PluginHost, entry));
    }

    FUNC2(window);
    FUNC8(window->task_magic);
    FUNC7(window);
    window->base.outer_window = NULL;

    if(outer_window && outer_window->base.inner_window == window) {
        outer_window->base.inner_window = NULL;
        FUNC0(&window->base.IHTMLWindow2_iface);
    }
}
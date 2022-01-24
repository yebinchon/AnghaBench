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
struct TYPE_3__ {int /*<<< orphan*/ * url; int /*<<< orphan*/ * uri_nofrag; int /*<<< orphan*/ * uri; } ;
typedef  int /*<<< orphan*/  IUri ;
typedef  TYPE_1__ HTMLOuterWindow ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(HTMLOuterWindow *window, IUri *uri)
{
    if(window->uri) {
        FUNC3(window->uri);
        window->uri = NULL;
    }

    if(window->uri_nofrag) {
        FUNC3(window->uri_nofrag);
        window->uri_nofrag = NULL;
    }

    FUNC4(window->url);
    window->url = NULL;

    if(!uri)
        return;

    FUNC1(uri);
    window->uri = uri;

    window->uri_nofrag = FUNC5(uri);
    if(!window->uri_nofrag) {
        FUNC0("get_uri_nofrag failed\n");
        FUNC1(uri);
        window->uri_nofrag = uri;
    }

    FUNC2(uri, &window->url);
}
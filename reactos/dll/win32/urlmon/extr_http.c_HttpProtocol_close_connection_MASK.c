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
struct TYPE_3__ {int /*<<< orphan*/ * full_header; int /*<<< orphan*/ * http_negotiate; } ;
typedef  int /*<<< orphan*/  Protocol ;
typedef  TYPE_1__ HttpProtocol ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(Protocol *prot)
{
    HttpProtocol *This = FUNC2(prot);

    if(This->http_negotiate) {
        FUNC0(This->http_negotiate);
        This->http_negotiate = NULL;
    }

    FUNC1(This->full_header);
    This->full_header = NULL;
}
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
struct TYPE_3__ {int /*<<< orphan*/  mime; int /*<<< orphan*/  clipboard_format; int /*<<< orphan*/  callback; int /*<<< orphan*/  report_mime; } ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  TYPE_1__ Binding ;

/* Variables and functions */
 int /*<<< orphan*/  BINDSTATUS_MIMETYPEAVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(Binding *This, LPCWSTR mime)
{
    FUNC2(This->mime);
    This->mime = FUNC3(mime);

    if(!This->mime || !This->report_mime)
        return;

    FUNC0(This->callback, 0, 0, BINDSTATUS_MIMETYPEAVAILABLE, This->mime);

    This->clipboard_format = FUNC1(This->mime);
}
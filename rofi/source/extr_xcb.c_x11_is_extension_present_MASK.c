#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int present; } ;
typedef  TYPE_1__ xcb_query_extension_reply_t ;
typedef  int /*<<< orphan*/  xcb_query_extension_cookie_t ;
struct TYPE_6__ {int /*<<< orphan*/  connection; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 TYPE_3__* xcb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4 ( const char *extension )
{
    xcb_query_extension_cookie_t randr_cookie = FUNC2 ( xcb->connection, FUNC1 ( extension ), extension );

    xcb_query_extension_reply_t  *randr_reply = FUNC3 ( xcb->connection, randr_cookie, NULL );

    int                          present = randr_reply->present;

    FUNC0 ( randr_reply );

    return present;
}
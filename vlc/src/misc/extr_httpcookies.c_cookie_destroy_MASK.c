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
struct TYPE_4__ {struct TYPE_4__* psz_path; struct TYPE_4__* psz_domain; struct TYPE_4__* psz_value; struct TYPE_4__* psz_name; } ;
typedef  TYPE_1__ http_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(http_cookie_t *cookie)
{
    FUNC0(cookie != NULL);
    FUNC1(cookie->psz_name);
    FUNC1(cookie->psz_value);
    FUNC1(cookie->psz_domain);
    FUNC1(cookie->psz_path);
    FUNC1(cookie);
}
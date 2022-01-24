#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * dialog; int /*<<< orphan*/ * focus; } ;

/* Variables and functions */
 scalar_t__* cert_filename ; 
 int /*<<< orphan*/  cert_password ; 
 int /*<<< orphan*/ * cert_password_dialog ; 
 TYPE_1__ ui ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (scalar_t__*) ; 

__attribute__((used)) static void FUNC2(void)
{
	if (FUNC1(cert_filename))
	{
		if (cert_filename[0] != 0)
		{
			FUNC0(&cert_password, "");
			ui.focus = &cert_password;
			ui.dialog = cert_password_dialog;
		}
		else
			ui.dialog = NULL;
	}
}
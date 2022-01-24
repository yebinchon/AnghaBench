#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  obj; } ;
struct TYPE_3__ {int gridsize; int lineheight; scalar_t__ key; int /*<<< orphan*/ * dialog; int /*<<< orphan*/  focus; } ;

/* Variables and functions */
 int /*<<< orphan*/  B ; 
 scalar_t__ KEY_ESCAPE ; 
 int /*<<< orphan*/  NONE ; 
 int /*<<< orphan*/  NW ; 
 int PDF_FIELD_IS_READ_ONLY ; 
 int /*<<< orphan*/  R ; 
 int /*<<< orphan*/  S ; 
 int /*<<< orphan*/  T ; 
 int /*<<< orphan*/  X ; 
 int /*<<< orphan*/ * cert_file_dialog ; 
 int /*<<< orphan*/  cert_file_filter ; 
 int /*<<< orphan*/  cert_filename ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* sig_widget ; 
 TYPE_1__ ui ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void FUNC12(void)
{
	const char *label = FUNC2(ctx, sig_widget->obj);

	FUNC4(400, (ui.gridsize+4)*3 + ui.lineheight*10);
	{
		FUNC8(T, X, NW, 2, 2);

		FUNC7("%s", label);
		FUNC11();

		FUNC7("Would you like to sign this field?");

		FUNC8(B, X, NW, 2, 2);
		FUNC9(0, ui.gridsize, 0, 0, 0);
		{
			FUNC8(R, NONE, S, 0, 0);
			if (FUNC3("Cancel") || (!ui.focus && ui.key == KEY_ESCAPE))
				ui.dialog = NULL;
			FUNC11();
			if (!(FUNC1(ctx, sig_widget->obj) & PDF_FIELD_IS_READ_ONLY))
			{
				if (FUNC3("Sign"))
				{
					FUNC0(cert_filename, filename, sizeof cert_filename);
					FUNC6(".", cert_file_filter);
					ui.dialog = cert_file_dialog;
				}
			}
		}
		FUNC10();
	}
	FUNC5();
}
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
 int /*<<< orphan*/  L ; 
 int /*<<< orphan*/  NONE ; 
 int /*<<< orphan*/  NW ; 
 int /*<<< orphan*/  R ; 
 int /*<<< orphan*/  S ; 
 int /*<<< orphan*/  T ; 
 int /*<<< orphan*/  X ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ sig_cert_error ; 
 int /*<<< orphan*/  sig_designated_name ; 
 scalar_t__ sig_digest_error ; 
 scalar_t__ sig_subsequent_edits ; 
 TYPE_2__* sig_widget ; 
 TYPE_1__ ui ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(void)
{
	const char *label = FUNC1(ctx, sig_widget->obj);

	FUNC4(400, (ui.gridsize+4)*3 + ui.lineheight*10);
	{
		FUNC7(T, X, NW, 2, 2);

		FUNC6("%s", label);
		FUNC10();

		FUNC6("Designated name: %s.", sig_designated_name);
		FUNC10();

		if (sig_cert_error)
			FUNC6("Certificate error: %s", FUNC2(sig_cert_error));
		else
			FUNC6("Certificate is trusted.");

		FUNC10();

		if (sig_digest_error)
			FUNC6("Digest error: %s", FUNC2(sig_digest_error));
		else if (sig_subsequent_edits)
			FUNC6("The signature is valid but there have been edits since signing.");
		else
			FUNC6("The document is unchanged since signing.");

		FUNC7(B, X, NW, 2, 2);
		FUNC8(0, ui.gridsize, 0, 0, 0);
		{
			FUNC7(L, NONE, S, 0, 0);
			if (FUNC3("Clear"))
			{
				ui.dialog = NULL;
				FUNC0();
			}
			FUNC7(R, NONE, S, 0, 0);
			if (FUNC3("Close") || (!ui.focus && ui.key == KEY_ESCAPE))
				ui.dialog = NULL;
		}
		FUNC9();
	}
	FUNC5();
}
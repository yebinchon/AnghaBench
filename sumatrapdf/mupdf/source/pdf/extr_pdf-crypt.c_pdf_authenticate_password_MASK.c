#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* crypt; } ;
typedef  TYPE_1__ pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_6__ {int r; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,unsigned char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int
FUNC5(fz_context *ctx, pdf_document *doc, const char *pwd_utf8)
{
	char password[2048];
	int auth;

	if (!doc->crypt)
		return 1; /* No password required */

	password[0] = 0;
	if (pwd_utf8)
	{
		if (doc->crypt->r <= 4)
			FUNC2(password, pwd_utf8, sizeof password);
		else
			FUNC3(password, pwd_utf8, sizeof password);
	}

	auth = 0;
	if (FUNC1(ctx, doc->crypt, (unsigned char *)password, FUNC4(password)))
		auth = 2;
	if (FUNC0(ctx, doc->crypt, (unsigned char *)password, FUNC4(password)))
		auth |= 4;
	else if (auth & 2)
	{
		/* We need to reauthenticate the user password,
		 * because the failed attempt to authenticate
		 * the owner password will have invalidated the
		 * stored keys. */
		(void)FUNC1(ctx, doc->crypt, (unsigned char *)password, FUNC4(password));
	}

	/* To match Acrobat, we choose not to allow an empty owner
	 * password, unless the user password is also the empty one. */
	if (*password == 0 && auth == 4)
		return 0;

	return auth;
}
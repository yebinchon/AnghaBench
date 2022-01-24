#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * STREAM ;
typedef  int /*<<< orphan*/  RDPCLIENT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int ISO_PDU_CR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL
FUNC8(RDPCLIENT * This, char *cookie)
{
	STREAM s;
	int cookielen = (int)FUNC5(cookie);
	int length = 11 + cookielen;

	s = FUNC6(This, length);

	if(s == NULL)
		return False;

	FUNC2(s, 3);	/* version */
	FUNC2(s, 0);	/* reserved */
	FUNC1(s, length);	/* length */

	FUNC2(s, length - 5);	/* hdrlen */
	FUNC2(s, ISO_PDU_CR);
	FUNC0(s, 0);	/* dst_ref */
	FUNC0(s, 0);	/* src_ref */
	FUNC2(s, 0);	/* class */

	FUNC3(s, cookie, cookielen);

	FUNC4(s);
	return FUNC7(This, s);
}
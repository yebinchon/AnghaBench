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
typedef  int /*<<< orphan*/  uint8 ;
typedef  scalar_t__ uint16 ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 scalar_t__ LICENCE_SIGNATURE_SIZE ; 
 scalar_t__ LICENCE_TOKEN_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL
FUNC5(STREAM s, uint8 ** token, uint8 ** signature)
{
	uint16 tokenlen;

	FUNC3(s, 6);	/* unknown: f8 3d 15 00 04 f6 */

	FUNC1(s, tokenlen);
	if (tokenlen != LICENCE_TOKEN_SIZE)
	{
		FUNC0("token len %d\n", tokenlen);
		return False;
	}

	FUNC2(s, *token, tokenlen);
	FUNC2(s, *signature, LICENCE_SIGNATURE_SIZE);

	return FUNC4(s);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
typedef  scalar_t__ uint16 ;
struct TYPE_12__ {int /*<<< orphan*/  key; } ;
struct TYPE_14__ {void* licence_issued; TYPE_1__ licence; } ;
struct TYPE_13__ {int /*<<< orphan*/  p; } ;
typedef  TYPE_2__* STREAM ;
typedef  TYPE_3__ RDPCLIENT ;
typedef  int /*<<< orphan*/  RC4_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* True ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(RDPCLIENT * This, STREAM s)
{
	RC4_KEY crypt_key;
	uint32 length;
	uint16 check;
	int i;

	FUNC5(s, 2);	/* 3d 45 - unknown */
	FUNC3(s, length);
	if (!FUNC6(s, length))
		return;

	FUNC1(&crypt_key, 16, This->licence.key);
	FUNC0(&crypt_key, length, s->p, s->p);

	FUNC2(s, check);
	if (check != 0)
		return;

	This->licence_issued = True;

	FUNC5(s, 2);	/* pad */

	/* advance to fourth string */
	length = 0;
	for (i = 0; i < 4; i++)
	{
		FUNC5(s, length);
		FUNC4(s, length);
		if (!FUNC6(s, length))
			return;
	}

	This->licence_issued = True;
	FUNC7(This, s->p, length);
}
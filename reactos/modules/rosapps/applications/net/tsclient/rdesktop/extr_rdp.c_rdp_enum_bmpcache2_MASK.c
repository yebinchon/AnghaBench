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
typedef  scalar_t__ uint32 ;
typedef  int /*<<< orphan*/ * STREAM ;
typedef  int /*<<< orphan*/  RDPCLIENT ;
typedef  int /*<<< orphan*/  HASH_KEY ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int BMPCACHE2_NUM_PSTCELLS ; 
 int /*<<< orphan*/  False ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 scalar_t__ PDU_FLAG_FIRST ; 
 scalar_t__ PDU_FLAG_LAST ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL
FUNC8(RDPCLIENT * This) // THIS
{
	STREAM s;
	HASH_KEY keylist[BMPCACHE2_NUM_PSTCELLS];
	uint32 num_keys, offset, count, flags;

	offset = 0;
	num_keys = FUNC4(This, 2, keylist);

	while (offset < num_keys)
	{
		count = FUNC0(num_keys - offset, 169);

		s = FUNC5(This, 24 + count * sizeof(HASH_KEY));

		if(s == NULL)
			return False;

		flags = 0;
		if (offset == 0)
			flags |= PDU_FLAG_FIRST;
		if (num_keys - offset <= 169)
			flags |= PDU_FLAG_LAST;

		/* header */
		FUNC2(s, 0);
		FUNC1(s, count);
		FUNC1(s, 0);
		FUNC1(s, 0);
		FUNC1(s, 0);
		FUNC1(s, 0);
		FUNC1(s, num_keys);
		FUNC2(s, 0);
		FUNC2(s, flags);

		/* list */
		FUNC3(s, keylist[offset], count * sizeof(HASH_KEY));

		FUNC7(s);
		if(!FUNC6(This, s, 0x2b))
			return False;

		offset += 169;
	}

	return True;
}
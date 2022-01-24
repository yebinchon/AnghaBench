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
typedef  scalar_t__ uint8 ;
typedef  int /*<<< orphan*/ * STREAM ;
typedef  int /*<<< orphan*/  RDPCLIENT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BER_TAG_INTEGER ; 
 int /*<<< orphan*/  BER_TAG_OCTET_STRING ; 
 int /*<<< orphan*/  BER_TAG_RESULT ; 
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  MCS_CONNECT_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL
FUNC8(RDPCLIENT * This, STREAM mcs_data)
{
	uint8 result;
	int length;
	STREAM s;

	s = FUNC4(This, NULL);
	if (s == NULL)
		return False;

	FUNC0(s, MCS_CONNECT_RESPONSE, &length);

	FUNC0(s, BER_TAG_RESULT, &length);
	FUNC2(s, result);
	if (result != 0)
	{
		FUNC1("MCS connect: %d\n", result);
		return False;
	}

	FUNC0(s, BER_TAG_INTEGER, &length);
	FUNC3(s, length);	/* connect id */
	FUNC5(s);

	FUNC0(s, BER_TAG_OCTET_STRING, &length);

	FUNC7(This, s);
	/*
	   if (length > mcs_data->size)
	   {
	   error("MCS data length %d, expected %d\n", length,
	   mcs_data->size);
	   length = mcs_data->size;
	   }

	   in_uint8a(s, mcs_data->data, length);
	   mcs_data->p = mcs_data->data;
	   mcs_data->end = mcs_data->data + length;
	 */
	return FUNC6(s);
}
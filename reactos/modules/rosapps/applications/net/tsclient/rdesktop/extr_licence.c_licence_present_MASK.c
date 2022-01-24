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
typedef  int /*<<< orphan*/  uint32 ;
typedef  int uint16 ;
typedef  int /*<<< orphan*/ * STREAM ;
typedef  int /*<<< orphan*/  RDPCLIENT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int LICENCE_HWID_SIZE ; 
 int LICENCE_SIGNATURE_SIZE ; 
 int LICENCE_TAG_PRESENT ; 
 int /*<<< orphan*/  SEC_LICENCE_NEG ; 
 int SEC_MODULUS_SIZE ; 
 int SEC_PADDING_SIZE ; 
 int SEC_RANDOM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL
FUNC9(RDPCLIENT * This, uint8 * client_random, uint8 * rsa_data,
		uint8 * licence_data, int licence_size, uint8 * hwid, uint8 * signature)
{
	uint32 sec_flags = SEC_LICENCE_NEG;
	uint16 length =
		16 + SEC_RANDOM_SIZE + SEC_MODULUS_SIZE + SEC_PADDING_SIZE +
		licence_size + LICENCE_HWID_SIZE + LICENCE_SIGNATURE_SIZE;
	STREAM s;

	s = FUNC7(This, sec_flags, length + 4);

	if(s == NULL)
		return False;

	FUNC3(s, LICENCE_TAG_PRESENT);
	FUNC3(s, 2);	/* version */
	FUNC1(s, length);

	FUNC2(s, 1);
	FUNC0(s, 0);
	FUNC1(s, 0x0201);

	FUNC4(s, client_random, SEC_RANDOM_SIZE);
	FUNC0(s, 0);
	FUNC1(s, (SEC_MODULUS_SIZE + SEC_PADDING_SIZE));
	FUNC4(s, rsa_data, SEC_MODULUS_SIZE);
	FUNC5(s, SEC_PADDING_SIZE);

	FUNC1(s, 1);
	FUNC1(s, licence_size);
	FUNC4(s, licence_data, licence_size);

	FUNC1(s, 1);
	FUNC1(s, LICENCE_HWID_SIZE);
	FUNC4(s, hwid, LICENCE_HWID_SIZE);

	FUNC4(s, signature, LICENCE_SIGNATURE_SIZE);

	FUNC6(s);
	return FUNC8(This, s, sec_flags);
}
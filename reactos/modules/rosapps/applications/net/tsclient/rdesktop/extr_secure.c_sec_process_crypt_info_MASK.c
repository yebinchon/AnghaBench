#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int uint32 ;
struct TYPE_6__ {int server_public_key_len; int /*<<< orphan*/ * crypted_random; int /*<<< orphan*/ * server_public_key; } ;
struct TYPE_7__ {TYPE_1__ secure; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  TYPE_2__ RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  RSA_NO_PADDING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int SEC_MAX_MODULUS_SIZE ; 
 int SEC_RANDOM_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(RDPCLIENT * This, STREAM s)
{
	uint8 *server_random, *modulus, *exponent;
	uint8 client_random[SEC_RANDOM_SIZE];
	uint32 rc4_key_size;

	if (!FUNC8(This, s, &rc4_key_size, &server_random, &modulus, &exponent))
	{
		FUNC0(("Failed to parse crypt info\n"));
		return;
	}

	FUNC0(("Generating client random\n"));
	FUNC3(client_random);

	if (NULL != This->secure.server_public_key)
	{			/* Which means we should use
				   RDP5-style encryption */
		uint8 inr[SEC_MAX_MODULUS_SIZE];
		uint32 padding_len = This->secure.server_public_key_len - SEC_RANDOM_SIZE;

		/* This is what the MS client do: */
		FUNC5(inr, 0, padding_len);
		/*  *ARIGL!* Plaintext attack, anyone?
		   I tried doing:
		   generate_random(inr);
		   ..but that generates connection errors now and then (yes,
		   "now and then". Something like 0 to 3 attempts needed before a
		   successful connection. Nice. Not!
		 */
		FUNC4(inr + padding_len, client_random, SEC_RANDOM_SIZE);
		FUNC6(inr + padding_len, SEC_RANDOM_SIZE);

		FUNC2(This->secure.server_public_key_len,
				   inr, This->secure.crypted_random, This->secure.server_public_key, RSA_NO_PADDING);

		FUNC6(This->secure.crypted_random, This->secure.server_public_key_len);

		FUNC1(This->secure.server_public_key);
		This->secure.server_public_key = NULL;
	}
	else
	{			/* RDP4-style encryption */
		FUNC9(This->secure.crypted_random,
				client_random, SEC_RANDOM_SIZE, This->secure.server_public_key_len, modulus,
				exponent);
	}
	FUNC7(This, client_random, server_random, rc4_key_size);
}
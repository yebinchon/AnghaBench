#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_4__ {int rc4_key_len; int /*<<< orphan*/ * encrypt_key; int /*<<< orphan*/  rc4_encrypt_key; int /*<<< orphan*/ * decrypt_key; int /*<<< orphan*/  rc4_decrypt_key; int /*<<< orphan*/ * encrypt_update_key; int /*<<< orphan*/ * decrypt_update_key; int /*<<< orphan*/ * sign_key; } ;
struct TYPE_5__ {TYPE_1__ secure; } ;
typedef  TYPE_2__ RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(RDPCLIENT * This, uint8 * client_random, uint8 * server_random, int rc4_key_size)
{
	uint8 pre_master_secret[48];
	uint8 master_secret[48];
	uint8 key_block[48];

	/* Construct pre-master secret */
	FUNC2(pre_master_secret, client_random, 24);
	FUNC2(pre_master_secret + 24, server_random, 24);

	/* Generate master secret and then key material */
	FUNC4(master_secret, pre_master_secret, client_random, server_random, 'A');
	FUNC4(key_block, master_secret, client_random, server_random, 'X');

	/* First 16 bytes of key material is MAC secret */
	FUNC2(This->secure.sign_key, key_block, 16);

	/* Generate export keys from next two blocks of 16 bytes */
	FUNC3(This->secure.decrypt_key, &key_block[16], client_random, server_random);
	FUNC3(This->secure.encrypt_key, &key_block[32], client_random, server_random);

	if (rc4_key_size == 1)
	{
		FUNC0(("40-bit encryption enabled\n"));
		FUNC5(This->secure.sign_key);
		FUNC5(This->secure.decrypt_key);
		FUNC5(This->secure.encrypt_key);
		This->secure.rc4_key_len = 8;
	}
	else
	{
		FUNC0(("rc_4_key_size == %d, 128-bit encryption enabled\n", rc4_key_size));
		This->secure.rc4_key_len = 16;
	}

	/* Save initial RC4 keys as update keys */
	FUNC2(This->secure.decrypt_update_key, This->secure.decrypt_key, 16);
	FUNC2(This->secure.encrypt_update_key, This->secure.encrypt_key, 16);

	/* Initialise RC4 state arrays */
	FUNC1(&This->secure.rc4_decrypt_key, This->secure.rc4_key_len, This->secure.decrypt_key);
	FUNC1(&This->secure.rc4_encrypt_key, This->secure.rc4_key_len, This->secure.encrypt_key);
}
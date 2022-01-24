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
struct TYPE_4__ {int rc4_key_len; } ;
struct TYPE_5__ {TYPE_1__ secure; } ;
typedef  int /*<<< orphan*/  SHA_CTX ;
typedef  TYPE_2__ RDPCLIENT ;
typedef  int /*<<< orphan*/  RC4_KEY ;
typedef  int /*<<< orphan*/  MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * pad_54 ; 
 int /*<<< orphan*/ * pad_92 ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(RDPCLIENT * This, uint8 * key, uint8 * update_key)
{
	uint8 shasig[20];
	SHA_CTX sha;
	MD5_CTX md5;
	RC4_KEY update;

	FUNC6(&sha);
	FUNC7(&sha, update_key, This->secure.rc4_key_len);
	FUNC7(&sha, pad_54, 40);
	FUNC7(&sha, key, This->secure.rc4_key_len);
	FUNC5(shasig, &sha);

	FUNC1(&md5);
	FUNC2(&md5, update_key, This->secure.rc4_key_len);
	FUNC2(&md5, pad_92, 48);
	FUNC2(&md5, shasig, 20);
	FUNC0(key, &md5);

	FUNC4(&update, This->secure.rc4_key_len, key);
	FUNC3(&update, This->secure.rc4_key_len, key, key);

	if (This->secure.rc4_key_len == 8)
		FUNC8(key);
}
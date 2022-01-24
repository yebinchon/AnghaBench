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
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_5__ {int encrypt_use_count; int /*<<< orphan*/  rc4_encrypt_key; int /*<<< orphan*/  encrypt_key; int /*<<< orphan*/  rc4_key_len; int /*<<< orphan*/  encrypt_update_key; } ;
struct TYPE_6__ {TYPE_1__ secure; } ;
typedef  TYPE_2__ RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(RDPCLIENT * This, uint8 * data, int length)
{
	if (This->secure.encrypt_use_count == 4096)
	{
		FUNC2(This, This->secure.encrypt_key, This->secure.encrypt_update_key);
		FUNC1(&This->secure.rc4_encrypt_key, This->secure.rc4_key_len, This->secure.encrypt_key);
		This->secure.encrypt_use_count = 0;
	}

	FUNC0(&This->secure.rc4_encrypt_key, length, data, data);
	This->secure.encrypt_use_count++;
}
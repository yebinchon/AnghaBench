#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  zk_hmac_tmpl; int /*<<< orphan*/  zk_current_tmpl; int /*<<< orphan*/  zk_salt_lock; } ;
typedef  TYPE_1__ zio_crypt_key_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(zio_crypt_key_t *key)
{
	FUNC2(&key->zk_salt_lock);

	/* free crypto templates */
	FUNC1(key->zk_current_tmpl);
	FUNC1(key->zk_hmac_tmpl);

	/* zero out sensitive data */
	FUNC0(key, sizeof (zio_crypt_key_t));
}
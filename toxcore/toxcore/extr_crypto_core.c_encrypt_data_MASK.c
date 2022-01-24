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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int crypto_box_BEFORENMBYTES ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

int FUNC3(const uint8_t *public_key, const uint8_t *secret_key, const uint8_t *nonce,
                 const uint8_t *plain, uint32_t length, uint8_t *encrypted)
{
    if (!public_key || !secret_key)
        return -1;

    uint8_t k[crypto_box_BEFORENMBYTES];
    FUNC1(public_key, secret_key, k);
    int ret = FUNC0(k, nonce, plain, length, encrypted);
    FUNC2(k, sizeof k);
    return ret;
}
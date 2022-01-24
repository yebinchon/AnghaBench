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
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 scalar_t__ crypto_box_BOXZEROBYTES ; 
 scalar_t__ crypto_box_MACBYTES ; 
 scalar_t__ crypto_box_ZEROBYTES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC3(const uint8_t *secret_key, const uint8_t *nonce, const uint8_t *encrypted, uint32_t length,
                           uint8_t *plain)
{
    if (length <= crypto_box_BOXZEROBYTES || !secret_key || !nonce || !encrypted || !plain)
        return -1;

    uint8_t temp_plain[length + crypto_box_ZEROBYTES];
    uint8_t temp_encrypted[length + crypto_box_BOXZEROBYTES];

    FUNC2(temp_encrypted, 0, crypto_box_BOXZEROBYTES);
    FUNC1(temp_encrypted + crypto_box_BOXZEROBYTES, encrypted, length); // Pad the message with 16 0 bytes.

    if (FUNC0(temp_plain, temp_encrypted, length + crypto_box_BOXZEROBYTES, nonce, secret_key) != 0)
        return -1;

    FUNC1(plain, temp_plain + crypto_box_ZEROBYTES, length - crypto_box_MACBYTES);
    return length - crypto_box_MACBYTES;
}
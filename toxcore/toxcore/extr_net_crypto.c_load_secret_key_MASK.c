#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  self_secret_key; int /*<<< orphan*/  self_public_key; } ;
typedef  TYPE_1__ Net_Crypto ;

/* Variables and functions */
 int /*<<< orphan*/  crypto_box_SECRETKEYBYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

void FUNC2(Net_Crypto *c, const uint8_t *sk)
{
    FUNC1(c->self_secret_key, sk, crypto_box_SECRETKEYBYTES);
    FUNC0(c->self_public_key, c->self_secret_key);
}
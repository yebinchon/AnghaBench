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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int crypto_box_NONCEBYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint16_t FUNC2(const uint8_t *nonce)
{
    uint16_t num;
    FUNC0(&num, nonce + (crypto_box_NONCEBYTES - sizeof(uint16_t)), sizeof(uint16_t));
    return FUNC1(num);
}
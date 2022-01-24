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
typedef  int /*<<< orphan*/  sha2_byte ;
typedef  int /*<<< orphan*/  SHA512_CTX ;
typedef  int /*<<< orphan*/  SHA384_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 

void FUNC1(SHA384_CTX* context, const sha2_byte* data, size_t len) {
	FUNC0((SHA512_CTX*)context, data, len);
}
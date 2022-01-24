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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static size_t FUNC2(uint8_t *dst, const uint8_t *buf, size_t buflen, size_t bits)
{
    if (buflen < 2)
        return 0;

    size_t n = FUNC1(buf);

    if (n * 8 > bits)
        return 0;

    n += 2;

    if (buflen < n)
        return 0;

    FUNC0(dst, buf, n);
    return n;
}
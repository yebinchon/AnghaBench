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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,char const*,size_t) ; 
 size_t FUNC2 (char const*,size_t) ; 

__attribute__((used)) static size_t
FUNC3(const char *utf8, size_t max_len, unsigned char *buf) {
    size_t len = FUNC2(utf8, max_len);
    FUNC0(buf, (uint16_t) len);
    FUNC1(&buf[2], utf8, len);
    return 2 + len;
}
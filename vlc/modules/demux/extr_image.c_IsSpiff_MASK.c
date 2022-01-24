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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  stream_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int const*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int const**,int) ; 

__attribute__((used)) static bool FUNC2(stream_t *s)
{
    const uint8_t *header;
    if (FUNC1(s, &header, 36) < 36) /* SPIFF header size */
        return false;
    if (header[0] != 0xff || header[1] != 0xd8 ||
        header[2] != 0xff || header[3] != 0xe8)
        return false;
    if (FUNC0(&header[6], "SPIFF\0", 6))
        return false;
    return true;
}
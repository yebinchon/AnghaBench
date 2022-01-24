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
 scalar_t__ FUNC0 (int const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int const**,int) ; 

__attribute__((used)) static bool FUNC2(stream_t *s)
{
    const uint8_t *header;
    if (FUNC1(s, &header, 66) < 66)
        return false;
    if (header[0] != 0x0A ||                        /* marker */
        (header[1] != 0x00 && header[1] != 0x02 &&
         header[1] != 0x03 && header[1] != 0x05) || /* version */
        (header[2] != 0 && header[2] != 1) ||       /* encoding */
        (header[3] != 1 && header[3] != 2 &&
         header[3] != 4 && header[3] != 8) ||       /* bits per pixel per plane */
        header[64] != 0 ||                          /* reserved */
        header[65] == 0 || header[65] > 4)          /* plane count */
        return false;
    if (FUNC0(&header[4]) > FUNC0(&header[8]) ||  /* xmin vs xmax */
        FUNC0(&header[6]) > FUNC0(&header[10]))   /* ymin vs ymax */
        return false;
    return true;
}
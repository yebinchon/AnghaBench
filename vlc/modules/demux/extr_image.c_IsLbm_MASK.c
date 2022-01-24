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
typedef  int /*<<< orphan*/  stream_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int) ; 

__attribute__((used)) static bool FUNC3(stream_t *s)
{
    const uint8_t *header;
    if (FUNC2(s, &header, 12) < 12)
        return false;
    if (FUNC1(&header[0], "FORM", 4) ||
        FUNC0(&header[4]) <= 4 ||
        (FUNC1(&header[8], "ILBM", 4) && FUNC1(&header[8], "PBM ", 4)))
        return false;
    return true;
}
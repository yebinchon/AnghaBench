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
typedef  int /*<<< orphan*/  type_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ TYPE_BASIC ; 
 scalar_t__ TYPE_ENUM ; 
 unsigned char FUNC0 (int /*<<< orphan*/  const*) ; 
 unsigned char FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC5(FILE *file, const type_t *type, unsigned int *typestring_offset)
{
    unsigned char fc;

    if (FUNC4(type) == TYPE_BASIC)
        fc = FUNC0(type);
    else if (FUNC4(type) == TYPE_ENUM)
        fc = FUNC1(type);
    else
        return 0;

    FUNC2(file, 2, "0x%02x,\t/* %s */\n", fc, FUNC3(fc));
    *typestring_offset += 1;
    return 1;
}
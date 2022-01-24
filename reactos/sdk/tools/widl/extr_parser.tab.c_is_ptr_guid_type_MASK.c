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

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC3(const type_t *type)
{
    /* first, make sure it is a pointer to something */
    if (!FUNC0(type)) return FALSE;

    /* second, make sure it is a pointer to something of size sizeof(GUID),
     * i.e. 16 bytes */
    return (FUNC1(FUNC2(type)) == 16);
}
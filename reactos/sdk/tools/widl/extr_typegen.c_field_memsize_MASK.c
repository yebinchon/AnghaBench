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
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/  const*,unsigned int*) ; 

__attribute__((used)) static unsigned int FUNC2(const type_t *type, unsigned int *offset)
{
    unsigned int align = 0;
    unsigned int size = FUNC1( type, &align );

    *offset = FUNC0( *offset, align );
    return size;
}
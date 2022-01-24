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
struct sltg_typelib {int /*<<< orphan*/  index; } ;
struct sltg_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sltg_typelib*,void*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,int,char const*) ; 
 struct sltg_block* FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct sltg_typelib *sltg, void *data, int size, const char *name)
{
    struct sltg_block *block = FUNC3(sizeof(*block));
    int index;

    FUNC2("add_block: %p,%d,\"%s\"\n", data, size, name);

    index = FUNC1(&sltg->index, name);

    FUNC0(sltg, data, size, index);
}
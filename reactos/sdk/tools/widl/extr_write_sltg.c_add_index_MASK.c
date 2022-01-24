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
struct sltg_data {int size; int allocated; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char const*) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char const*) ; 
 int FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC5(struct sltg_data *index, const char *name)
{
    int name_offset = index->size;
    int new_size = index->size + FUNC3(name) + 1;

    FUNC0("add_index: name_offset %d, \"%s\"\n", name_offset, name);

    if (new_size > index->allocated)
    {
        index->allocated = FUNC1(index->allocated * 2, new_size);
        index->data = FUNC4(index->data, index->allocated);
    }

    FUNC2(index->data + index->size, name);
    index->size = new_size;

    return name_offset;
}
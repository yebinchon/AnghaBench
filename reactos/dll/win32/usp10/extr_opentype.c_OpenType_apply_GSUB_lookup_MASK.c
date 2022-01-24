#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_2__ {int /*<<< orphan*/  LookupList; } ;
typedef  int /*<<< orphan*/  OT_LookupList ;
typedef  TYPE_1__ GSUB_Header ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ *,unsigned int,int,int*) ; 

int FUNC2(const void *table, unsigned int lookup_index, WORD *glyphs,
        unsigned int glyph_index, int write_dir, int *glyph_count)
{
    const GSUB_Header *header = (const GSUB_Header *)table;
    const OT_LookupList *lookup = (const OT_LookupList*)((const BYTE*)header + FUNC0(header->LookupList));

    return FUNC1(lookup, lookup_index, glyphs, glyph_index, write_dir, glyph_count);
}
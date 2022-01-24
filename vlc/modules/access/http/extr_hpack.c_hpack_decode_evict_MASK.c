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
struct hpack_decoder {scalar_t__ size; scalar_t__ max_size; size_t entries; scalar_t__* table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*,int) ; 
 size_t FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct hpack_decoder *dec)
{
    /* Eviction: count how many entries to evict */
    size_t evicted = 0;
    while (dec->size > dec->max_size)
    {
        FUNC0(evicted < dec->entries);

        size_t namelen = FUNC3(dec->table[evicted]);
        size_t valuelen = FUNC3(dec->table[evicted] + namelen + 1);

        FUNC0(dec->size >= 32 + namelen + valuelen);
        dec->size -= 32 + namelen + valuelen;
        evicted++;
    }

    /* Eviction: remove oldest entries */
    if (evicted > 0)
    {
        for (size_t i = 0; i < evicted; i++)
            FUNC1(dec->table[i]);

        dec->entries -= evicted;
        FUNC2(dec->table, dec->table + evicted,
                sizeof (dec->table[0]) * dec->entries);
    }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  num_tables; } ;
typedef  TYPE_1__ cmap_header ;
struct TYPE_5__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  enc_id; int /*<<< orphan*/  plat_id; } ;
typedef  TYPE_2__ cmap_encoding_record ;
typedef  scalar_t__ USHORT ;
typedef  void BYTE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC2(cmap_header *header, USHORT plat_id, USHORT enc_id)
{
    USHORT i;
    cmap_encoding_record *record = (cmap_encoding_record *)(header + 1);

    for(i = 0; i < FUNC1(header->num_tables); i++)
    {
        if(FUNC1(record->plat_id) == plat_id && FUNC1(record->enc_id) == enc_id)
            return (BYTE *)header + FUNC0(record->offset);
        record++;
    }
    return NULL;
}
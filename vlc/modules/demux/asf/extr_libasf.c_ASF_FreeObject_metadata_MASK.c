#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_6__ {size_t i_record_entries_count; TYPE_3__* record; } ;
struct TYPE_5__ {TYPE_2__ metadata; } ;
typedef  TYPE_1__ asf_object_t ;
typedef  TYPE_2__ asf_object_metadata_t ;
struct TYPE_7__ {struct TYPE_7__* p_data; struct TYPE_7__* psz_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC1( asf_object_t *p_obj )
{
    asf_object_metadata_t *p_meta = &p_obj->metadata;

    for( uint32_t i = 0; i < p_meta->i_record_entries_count; i++ )
    {
        FUNC0( p_meta->record[i].psz_name );
        FUNC0( p_meta->record[i].p_data );
    }
    FUNC0( p_meta->record );
}
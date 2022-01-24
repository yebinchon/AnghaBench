#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {struct TYPE_11__* p_decoder_specific_info; } ;
struct TYPE_7__ {TYPE_3__* p_esds; } ;
struct TYPE_10__ {TYPE_1__ data; } ;
struct TYPE_8__ {TYPE_5__* p_decConfigDescr; TYPE_5__* psz_URL; } ;
struct TYPE_9__ {TYPE_2__ es_descriptor; } ;
typedef  TYPE_4__ MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 

__attribute__((used)) static void FUNC1( MP4_Box_t *p_box )
{
    FUNC0( p_box->data.p_esds->es_descriptor.psz_URL );
    if( p_box->data.p_esds->es_descriptor.p_decConfigDescr )
    {
        FUNC0( p_box->data.p_esds->es_descriptor.p_decConfigDescr->p_decoder_specific_info );
        FUNC0( p_box->data.p_esds->es_descriptor.p_decConfigDescr );
    }
}
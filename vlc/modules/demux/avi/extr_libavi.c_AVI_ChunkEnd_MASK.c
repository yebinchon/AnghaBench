#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_5__ {scalar_t__ i_chunk_pos; } ;
struct TYPE_6__ {TYPE_1__ common; } ;
typedef  TYPE_2__ avi_chunk_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__ const*) ; 

__attribute__((used)) static uint64_t FUNC1( const avi_chunk_t *p_ck )
{
    return p_ck->common.i_chunk_pos + FUNC0( p_ck );
}
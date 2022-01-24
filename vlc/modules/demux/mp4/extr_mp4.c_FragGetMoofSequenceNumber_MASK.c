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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_sequence_number; } ;
typedef  int /*<<< orphan*/  MP4_Box_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static uint32_t FUNC2( MP4_Box_t *p_moof )
{
    const MP4_Box_t *p_mfhd = FUNC1( p_moof, "mfhd" );
    if( p_mfhd && FUNC0(p_mfhd) )
        return FUNC0(p_mfhd)->i_sequence_number;
    return 0;
}
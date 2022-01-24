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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_6__ {TYPE_1__* p_tsel; } ;
struct TYPE_7__ {TYPE_2__ data; } ;
struct TYPE_5__ {scalar_t__ i_switch_group; } ;
typedef  TYPE_3__ MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP4_Box_data_tsel_t ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int i_read ; 

__attribute__((used)) static int FUNC3( stream_t *p_stream, MP4_Box_t *p_box )
{
    FUNC1( MP4_Box_data_tsel_t, NULL );
    uint32_t i_version;
    FUNC0( i_version );
    if ( i_version != 0 || i_read < 4 )
        FUNC2( 0 );
    FUNC0( p_box->data.p_tsel->i_switch_group );
    /* ignore list of attributes as es are present before switch */
    FUNC2( 1 );
}
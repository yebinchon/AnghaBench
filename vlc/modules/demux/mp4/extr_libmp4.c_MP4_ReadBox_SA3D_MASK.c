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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_5__ {TYPE_2__* p_SA3D; } ;
struct TYPE_7__ {TYPE_1__ data; } ;
struct TYPE_6__ {scalar_t__ i_ambisonic_type; scalar_t__ i_ambisonic_channel_ordering; scalar_t__ i_ambisonic_normalization; int /*<<< orphan*/  i_num_channels; int /*<<< orphan*/  i_ambisonic_order; } ;
typedef  TYPE_3__ MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP4_Box_data_SA3D_t ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4( stream_t *p_stream, MP4_Box_t *p_box )
{
    FUNC2( MP4_Box_data_SA3D_t, NULL );

    uint8_t i_version;
    FUNC0( i_version );
    if ( i_version != 0 )
        FUNC3( 0 );

    FUNC0( p_box->data.p_SA3D->i_ambisonic_type );
    FUNC1( p_box->data.p_SA3D->i_ambisonic_order );
    FUNC0( p_box->data.p_SA3D->i_ambisonic_channel_ordering );
    FUNC0( p_box->data.p_SA3D->i_ambisonic_normalization );
    FUNC1( p_box->data.p_SA3D->i_num_channels );
    FUNC3( 1 );
}
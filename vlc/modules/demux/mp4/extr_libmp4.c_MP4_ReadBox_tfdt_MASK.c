#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_7__ {int i_version; int /*<<< orphan*/  i_base_media_decode_time; } ;
struct TYPE_5__ {TYPE_4__* p_tfdt; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
typedef  TYPE_2__ MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP4_Box_data_tfdt_t ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int i_read ; 

__attribute__((used)) static int FUNC5( stream_t *p_stream, MP4_Box_t *p_box )
{
    FUNC3( MP4_Box_data_tfdt_t, NULL );
    if( i_read < 8 )
        FUNC4( 0 );

    FUNC2( p_box->data.p_tfdt );

    if( p_box->data.p_tfdt->i_version == 0 )
        FUNC0( p_box->data.p_tfdt->i_base_media_decode_time );
    else if( p_box->data.p_tfdt->i_version == 1 )
        FUNC1( p_box->data.p_tfdt->i_base_media_decode_time );
    else
        FUNC4( 0 );

    FUNC4( 1 );
}
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
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_6__ {TYPE_1__* p_cmvd; } ;
struct TYPE_7__ {TYPE_2__ data; } ;
struct TYPE_5__ {int b_compressed; int /*<<< orphan*/  i_compressed_size; int /*<<< orphan*/  p_data; int /*<<< orphan*/  i_uncompressed_size; } ;
typedef  TYPE_3__ MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP4_Box_data_cmvd_t ; 
 int /*<<< orphan*/  MP4_FreeBox_cmvd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  i_read ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  p_peek ; 

__attribute__((used)) static int FUNC6( stream_t *p_stream, MP4_Box_t *p_box )
{
    FUNC1( MP4_Box_data_cmvd_t, MP4_FreeBox_cmvd );

    FUNC0( p_box->data.p_cmvd->i_uncompressed_size );

    p_box->data.p_cmvd->i_compressed_size = i_read;

    if( !( p_box->data.p_cmvd->p_data = FUNC3( i_read ) ) )
        FUNC2( 0 );

    /* now copy compressed data */
    FUNC4( p_box->data.p_cmvd->p_data, p_peek,i_read);

    p_box->data.p_cmvd->b_compressed = 1;

#ifdef MP4_VERBOSE
    msg_Dbg( p_stream, "read box: \"cmvd\" compressed data size %d",
                      p_box->data.p_cmvd->i_compressed_size );
#endif

    FUNC2( 1 );
}
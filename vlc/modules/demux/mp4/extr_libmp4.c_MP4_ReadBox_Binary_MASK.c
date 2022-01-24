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
struct TYPE_6__ {TYPE_1__* p_binary; } ;
struct TYPE_7__ {TYPE_2__ data; } ;
struct TYPE_5__ {scalar_t__ i_blob; scalar_t__ p_blob; } ;
typedef  TYPE_3__ MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP4_Box_data_binary_t ; 
 int /*<<< orphan*/  MP4_FreeBox_Binary ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  UINT32_MAX ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ i_read ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  p_peek ; 

__attribute__((used)) static int FUNC5( stream_t *p_stream, MP4_Box_t *p_box )
{
    FUNC0( MP4_Box_data_binary_t, MP4_FreeBox_Binary );
    i_read = FUNC2( i_read, UINT32_MAX );
    if ( i_read > 0 )
    {
        p_box->data.p_binary->p_blob = FUNC3( i_read );
        if ( p_box->data.p_binary->p_blob )
        {
            FUNC4( p_box->data.p_binary->p_blob, p_peek, i_read );
            p_box->data.p_binary->i_blob = i_read;
        }
    }
    FUNC1( 1 );
}
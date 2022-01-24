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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  stream_t ;
typedef  int /*<<< orphan*/  avi_chunk_t ;
struct TYPE_2__ {int /*<<< orphan*/  dwTotalFrames; } ;
typedef  TYPE_1__ avi_chunk_dmlh_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVI_READCHUNK_ENTER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3( stream_t *s, avi_chunk_t *p_chk )
{
    avi_chunk_dmlh_t *p_dmlh = (avi_chunk_dmlh_t*)p_chk;

    AVI_READCHUNK_ENTER;

    FUNC0( p_dmlh->dwTotalFrames );

#ifdef AVI_DEBUG
    msg_Dbg( (vlc_object_t*)s, "dmlh: dwTotalFrames %d",
             p_dmlh->dwTotalFrames );
#endif
    FUNC1( VLC_SUCCESS );
}
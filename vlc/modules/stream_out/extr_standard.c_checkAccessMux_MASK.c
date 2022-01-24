#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sout_stream_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC5( sout_stream_t *p_stream, char *psz_access,
                            char *psz_mux )
{
    if( FUNC0( psz_access, "mmsh", 4 ) && !FUNC0( psz_mux, "asfh", 4 ) )
        FUNC2( p_stream, "mmsh output is only valid with asfh mux" );
    else if( !FUNC0( psz_access, "file", 4 ) &&
             ( FUNC0( psz_mux, "mov", 3 ) || FUNC0( psz_mux, "mp4", 3 ) ) )
        FUNC2( p_stream, "mov and mp4 mux are only valid with file output" );
    else if( FUNC0( psz_access, "udp", 3 ) )
    {
        if( FUNC0( psz_mux, "ffmpeg", 6 ) || FUNC0( psz_mux, "avformat", 8 ) )
        {   /* why would you use ffmpeg's ts muxer ? YOU DON'T LOVE VLC ??? */
            char *psz_ffmpeg_mux = FUNC4( p_stream, "sout-avformat-mux" );
            if( !psz_ffmpeg_mux || FUNC3( psz_ffmpeg_mux, "mpegts", 6 ) )
                FUNC2( p_stream, "UDP output is only valid with TS mux" );
            FUNC1( psz_ffmpeg_mux );
        }
        else if( !FUNC0( psz_mux, "ts", 2 ) )
            FUNC2( p_stream, "UDP output is only valid with TS mux" );
    }
}
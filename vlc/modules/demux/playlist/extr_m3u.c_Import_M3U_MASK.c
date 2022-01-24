#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {scalar_t__ force; } ;
struct TYPE_7__ {char* (* p_sys ) (char const*) ;int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_readdir; int /*<<< orphan*/  s; TYPE_1__ obj; } ;
typedef  TYPE_2__ stream_t ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 char* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  ReadDir ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  access_vaDirectoryControlHelper ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC8 (TYPE_2__*,char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char const*,char*,int) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int) ; 

int FUNC14( vlc_object_t *p_this )
{
    stream_t *p_stream = (stream_t *)p_this;
    const uint8_t *p_peek;
    ssize_t i_peek;
    int offset = 0;

    FUNC0(p_stream);
    i_peek = FUNC12( p_stream->s, &p_peek, 1024 );
    if( i_peek < 8 )
        return VLC_EGENERIC;

    /* Encoding: UTF-8 or unspecified */
    char *(*pf_dup) (const char *) = GuessEncoding;

    if (FUNC8(p_stream, ".m3u8")
     || FUNC10((const char *)p_peek, "RTSPtext", 8) == 0) /* QuickTime */
        pf_dup = CheckUnicode;
    else
    if (FUNC6( p_peek, "\xef\xbb\xbf", 3) == 0) /* UTF-8 Byte Order Mark */
    {
        if( i_peek < 12 )
            return VLC_EGENERIC;
        pf_dup = CheckUnicode;
        offset = 3;
        p_peek += offset;
        i_peek -= offset;
    }

    /* File type: playlist, or not (HLS manifest or whatever else) */
    char *type = FUNC9(p_stream->s);
    bool match;

    if (p_stream->obj.force)
        match = true;
    else
    if (type != NULL
     && !FUNC11(type, "application/vnd.apple.mpegurl")) /* HLS */
        match = false;
    else
    if (FUNC6(p_peek, "#EXTM3U", 7 ) == 0
     || (type != NULL
      && (FUNC11(type, "application/mpegurl") == 0
       || FUNC11(type, "application/x-mpegurl") == 0
       || FUNC11(type, "audio/mpegurl") == 0
       || FUNC11(type, "vnd.apple.mpegURL") == 0
       || FUNC11(type, "audio/x-mpegurl") == 0))
     || FUNC8(p_stream, ".m3u8")
     || FUNC8(p_stream, ".m3u"))
        match = !FUNC4(p_peek, i_peek);
    else
    if (FUNC8(p_stream, ".vlc")
     || FUNC10((const char *)p_peek, "RTSPtext", 8) == 0
     || FUNC2(p_peek, i_peek))
        match = true;
    else
        match = false;

    FUNC5(type);

    if (!match)
        return VLC_EGENERIC;

    if (offset != 0 && FUNC13(p_stream->s, offset))
        return VLC_EGENERIC;

    FUNC7( p_stream, "found valid M3U playlist" );
    p_stream->p_sys = pf_dup;
    p_stream->pf_readdir = ReadDir;
    p_stream->pf_control = access_vaDirectoryControlHelper;

    return VLC_SUCCESS;
}
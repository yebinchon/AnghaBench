#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {int /*<<< orphan*/  pf_control; int /*<<< orphan*/  s; int /*<<< orphan*/  pf_readdir; } ;
typedef  TYPE_1__ stream_t ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  ReadBR ; 
 char* FUNC1 (TYPE_1__*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  access_vaDirectoryControlHelper ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 size_t FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int) ; 

int FUNC7( vlc_object_t *p_this )
{
    stream_t *p_stream = (stream_t *)p_this;

    FUNC0(p_stream);

    if( !FUNC3( p_stream, ".BDMV" ) )
        return VLC_EGENERIC;

    const char *psz_location = FUNC1( p_stream );
    if( psz_location == NULL )
        return VLC_EGENERIC;

    size_t len = FUNC4( psz_location );
    if( len < 15 )
        return VLC_EGENERIC;

    const char *psz_probe;
    const char *psz_file = &psz_location[len - 10];
    /* Valid filenames are :
     *  - INDEX.BDMV
     */
    if( !FUNC5( psz_file, "INDEX", 5 ) )
    {
        psz_probe = "INDX0200";
        p_stream->pf_readdir = ReadBR;
    }
    else
        return VLC_EGENERIC;

    const uint8_t *p_peek;
    ssize_t i_peek = FUNC6( p_stream->s, &p_peek, 8 );
    if( i_peek < 8 || FUNC2( p_peek, psz_probe, 8 ) )
        return VLC_EGENERIC;

    p_stream->pf_control = access_vaDirectoryControlHelper;

    return VLC_SUCCESS;
}
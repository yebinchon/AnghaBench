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
typedef  int /*<<< orphan*/  psz_file ;
typedef  int /*<<< orphan*/  p_dec ;
struct TYPE_5__ {int /*<<< orphan*/  fmt_in; int /*<<< orphan*/  fmt_out; int /*<<< orphan*/  pf_decode; int /*<<< orphan*/ * p_sys; } ;
typedef  TYPE_1__ decoder_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  DecodeBlock ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,void*) ; 
 int FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 

__attribute__((used)) static int FUNC6( vlc_object_t *p_this, bool b_force_dump )
{
    decoder_t *p_dec = (decoder_t*)p_this;
    char psz_file[10 + 3 * sizeof (p_dec)];

    FUNC3( psz_file, sizeof( psz_file), "stream.%p", (void *)p_dec );

    if( !b_force_dump )
        b_force_dump = FUNC4( p_dec, "dummy-save-es" );
    if( b_force_dump )
    {
        FILE *stream = FUNC5( psz_file, "wb" );
        if( stream == NULL )
        {
            FUNC2( p_dec, "cannot create `%s'", psz_file );
            return VLC_EGENERIC;
        }
        FUNC1( p_dec, "dumping stream to file `%s'", psz_file );
        p_dec->p_sys = (void *)stream;
    }
    else
        p_dec->p_sys = NULL;

    /* Set callbacks */
    p_dec->pf_decode = DecodeBlock;

    FUNC0( &p_dec->fmt_out, &p_dec->fmt_in );

    return VLC_SUCCESS;
}
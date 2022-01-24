#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct vlclua_playlist {int /*<<< orphan*/ * L; int /*<<< orphan*/  filename; int /*<<< orphan*/ * access; int /*<<< orphan*/ * path; } ;
struct TYPE_6__ {struct vlclua_playlist* p_sys; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  luabatch_context_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int) ; 
 char* FUNC14 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,char*,char const*,...) ; 
 int /*<<< orphan*/  p_reg ; 
 int /*<<< orphan*/  FUNC22 (char const*) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC26(vlc_object_t *obj, const char *filename,
                           const luabatch_context_t *ctx)
{
    stream_t *s = (stream_t *)obj;
    struct vlclua_playlist *sys = s->p_sys;

    /* Initialise Lua state structure */
    lua_State *L = FUNC1();
    if( !L )
        return VLC_ENOMEM;

    sys->L = L;

    /* Load Lua libraries */
    FUNC2( L ); /* FIXME: Don't open all the libs? */

    FUNC25(L, s);
    FUNC3( L, "vlc", p_reg );
    FUNC15( L );
    FUNC17( L );
    FUNC16( L );
    FUNC18( L );
    FUNC19( L );

    if (sys->path != NULL)
        FUNC11(L, sys->path);
    else
        FUNC10(L);
    FUNC12( L, -2, "path" );

    if (sys->access != NULL)
        FUNC11(L, sys->access);
    else
        FUNC10(L);
    FUNC12( L, -2, "access" );

    FUNC9( L, 1 );

    /* Setup the module search path */
    if (FUNC23(L, filename))
    {
        FUNC21(s, "error setting the module search path for %s", filename);
        goto error;
    }

    /* Load and run the script(s) */
    if (FUNC24(FUNC0(s), L, filename))
    {
        FUNC21(s, "error loading script %s: %s", filename,
                 FUNC14(L, FUNC6(L)));
        goto error;
    }

    FUNC5( L, "probe" );
    if( !FUNC7( L, -1 ) )
    {
        FUNC21(s, "error running script %s: function %s(): %s",
                 filename, "probe", "not found");
        goto error;
    }

    if( FUNC8( L, 0, 1, 0 ) )
    {
        FUNC21(s, "error running script %s: function %s(): %s",
                 filename, "probe", FUNC14(L, FUNC6(L)));
        goto error;
    }

    if( FUNC6( L ) )
    {
        if( FUNC13( L, 1 ) )
        {
            FUNC20(s, "Lua playlist script %s's "
                    "probe() function was successful", filename );
            FUNC9( L, 1 );
            sys->filename = FUNC22(filename);
            return VLC_SUCCESS;
        }
    }

    (void) ctx;
error:
    FUNC9( L, 1 );
    FUNC4(sys->L);
    return VLC_EGENERIC;
}
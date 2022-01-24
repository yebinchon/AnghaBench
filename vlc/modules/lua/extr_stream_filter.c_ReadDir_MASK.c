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
struct vlclua_playlist {int /*<<< orphan*/  filename; int /*<<< orphan*/ * L; } ;
struct TYPE_6__ {int /*<<< orphan*/ * psz_url; struct vlclua_playlist* p_sys; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  input_item_t ;
typedef  int /*<<< orphan*/  input_item_node_t ;

/* Variables and functions */
 int VLC_ENOITEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  p_reg_parse ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(stream_t *s, input_item_node_t *node)
{
    struct vlclua_playlist *sys = s->p_sys;
    lua_State *L = sys->L;

    FUNC6( L, "vlc", p_reg_parse );

    FUNC7( L, "parse" );

    if( !FUNC9( L, -1 ) )
    {
        FUNC17(s, "error running script %s: function %s(): %s",
                 sys->filename, "parse", "not found");
        return VLC_ENOITEM;
    }

    if( FUNC12( L, 0, 1, 0 ) )
    {
        FUNC17(s, "error running script %s: function %s(): %s",
                 sys->filename, "parse", FUNC15(L, FUNC8(L)));
        return VLC_ENOITEM;
    }

    if (!FUNC8(L))
    {
        FUNC16(s, "script went completely foobar");
        return VLC_ENOITEM;
    }

    if (!FUNC10(L, -1))
    {
        FUNC17(s, "Playlist should be a table.");
        return VLC_ENOITEM;
    }

    FUNC14(L);

    /* playlist nil */
    while (FUNC11(L, -2))
    {
        input_item_t *item = FUNC18(FUNC0(s), L);
        if (item != NULL)
        {
            /* copy the original URL to the meta data,
             * if "URL" is still empty */
            char *url = FUNC2(item);
            if (url == NULL && s->psz_url != NULL)
                FUNC4(item, s->psz_url);
            FUNC1(url);

            FUNC5(node, item);
            FUNC3(item);
        }
        /* pop the value, keep the key for the next lua_next() call */
        FUNC13(L, 1);
    }
    /* playlist */

    return VLC_SUCCESS;
}
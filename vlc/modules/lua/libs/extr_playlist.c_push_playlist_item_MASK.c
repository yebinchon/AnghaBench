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
typedef  int /*<<< orphan*/  vlc_playlist_item_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {char* psz_uri; scalar_t__ i_duration; } ;
typedef  TYPE_1__ input_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(lua_State *L, vlc_playlist_item_t *item)
{
    FUNC2(L);

    FUNC3(L, FUNC9(item));
    FUNC6(L, -2, "id");

    input_item_t *media = FUNC10(item);

    /* Apart from nb_played, these fields unfortunately duplicate
       fields already available from the input item */
    char *name = FUNC1(media);
    FUNC5(L, name);
    FUNC0(name);
    FUNC6(L, -2, "name");

    FUNC5(L, media->psz_uri);
    FUNC6(L, -2, "path");

    if( media->i_duration < 0 )
        FUNC4(L, -1);
    else
        FUNC4(L, FUNC8(media->i_duration));
    FUNC6(L, -2, "duration");

    FUNC7(L, media);
}
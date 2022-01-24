#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_playlist_t ;
typedef  int /*<<< orphan*/  vlc_player_t ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ intf_thread_t ;
struct TYPE_8__ {int plidx_follow; char* open_chain; int /*<<< orphan*/ * playlist; } ;
typedef  TYPE_2__ intf_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_ES ; 
 int /*<<< orphan*/  BOX_BROWSE ; 
 int /*<<< orphan*/  BOX_HELP ; 
 int /*<<< orphan*/  BOX_INFO ; 
 int /*<<< orphan*/  BOX_LOG ; 
 int /*<<< orphan*/  BOX_META ; 
 int /*<<< orphan*/  BOX_OPEN ; 
 int /*<<< orphan*/  BOX_PLAYLIST ; 
 int /*<<< orphan*/  BOX_SEARCH ; 
 int /*<<< orphan*/  BOX_STATS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  ERR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
#define  KEY_CLEAR 131 
#define  KEY_EXIT 130 
#define  KEY_LEFT 129 
#define  KEY_RIGHT 128 
 int /*<<< orphan*/  SPU_ES ; 
 int /*<<< orphan*/  VIDEO_ES ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC24(intf_thread_t *intf, vlc_player_t *player, int key)
{
    intf_sys_t *sys = intf->p_sys;
    vlc_playlist_t *playlist = sys->playlist;

    switch(key)
    {
    case 0x1b:  /* ESC */
        /* See comment in HandleEditBoxKey() */
        if (FUNC4() != ERR)
            return;
        /* Fall-through */

    case 'q':
    case 'Q':
    case KEY_EXIT:
        FUNC5(FUNC6(intf));
        return;

    case 'h':
    case 'H': FUNC0(sys, BOX_HELP);       return;
    case 'i': FUNC0(sys, BOX_INFO);       return;
    case 'M': FUNC0(sys, BOX_META);       return;
    case 'L': FUNC0(sys, BOX_LOG);        return;
    case 'P': FUNC0(sys, BOX_PLAYLIST);   return;
    case 'B': FUNC0(sys, BOX_BROWSE);     return;
    case 'S': FUNC0(sys, BOX_STATS);      return;

    case '/': /* Search */
        sys->plidx_follow = false;
        FUNC0(sys, BOX_SEARCH);
        return;

    case 'A': /* Open */
        sys->open_chain[0] = '\0';
        FUNC0(sys, BOX_OPEN);
        return;

    /* Navigation */
    case KEY_RIGHT: FUNC1(player, +0.01); return;
    case KEY_LEFT:  FUNC1(player, -0.01); return;

    /* Common control */
    case 'f':
        FUNC19(player);
        return;

    case ' ':
        FUNC7(player);
        FUNC14(player);
        FUNC15(player);
        return;
    case 's':
        FUNC7(player);
        FUNC13(player);
        FUNC15(player);
        return;

    case 'e': FUNC2(intf, player);           return;

    case '[':
        FUNC7(player);
        FUNC12(player);
        FUNC15(player);
        return;
    case ']':
        FUNC7(player);
        FUNC9(player);
        FUNC15(player);
        return;
    case '<':
        FUNC7(player);
        FUNC11(player);
        FUNC15(player);
        return;
    case '>':
        FUNC7(player);
        FUNC8(player);
        FUNC15(player);
        return;

    case 'p':
        FUNC20(playlist);
        FUNC22(playlist);
        FUNC23(playlist);
        break;
    case 'n':
        FUNC20(playlist);
        FUNC21(playlist);
        FUNC23(playlist);
        break;

    case 'a':
        FUNC7(player);
        FUNC17(player, 1, NULL);
        FUNC15(player);
        break;
    case 'z':
        FUNC7(player);
        FUNC16(player, 1, NULL);
        FUNC15(player);
        break;
    case 'm':
        FUNC7(player);
        FUNC18(player);
        FUNC15(player);
        break;

    case 'c':
        FUNC7(player);
        FUNC10(player, AUDIO_ES);
        FUNC15(player);
        break;
    case 'v':
        FUNC7(player);
        FUNC10(player, SPU_ES);
        FUNC15(player);
        break;
    case 'b':
        FUNC7(player);
        FUNC10(player, VIDEO_ES);
        FUNC15(player);
        break;

    case 0x0c:  /* ^l */
    case KEY_CLEAR:
        break;

    default:
        return;
    }

    FUNC3();
    return;
}
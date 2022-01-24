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
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ intf_thread_t ;
struct TYPE_7__ {char* search_chain; char* open_chain; void* box_type; } ;
typedef  TYPE_2__ intf_sys_t ;

/* Variables and functions */
 int BOX_OPEN ; 
 void* BOX_PLAYLIST ; 
 int BOX_SEARCH ; 
 int /*<<< orphan*/  ERR ; 
#define  KEY_BACKSPACE 130 
#define  KEY_CLEAR 129 
#define  KEY_ENTER 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 size_t FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(intf_thread_t *intf, int key, int box)
{
    intf_sys_t *sys = intf->p_sys;
    bool search = box == BOX_SEARCH;
    char *str = search ? sys->search_chain: sys->open_chain;
    size_t len = FUNC6(str);

    FUNC3(box == BOX_SEARCH || box == BOX_OPEN);

    switch(key)
    {
    case 0x0c:  /* ^l */
    case KEY_CLEAR:     FUNC4(); return;

    case KEY_ENTER:
    case '\r':
    case '\n':
        if (search)
            FUNC2(sys);
        else
            FUNC0(intf);

        sys->box_type = BOX_PLAYLIST;
        return;

    case 0x1b: /* ESC */
        /* Alt+key combinations return 2 keys in the terminal keyboard:
         * ESC, and the 2nd key.
         * If some other key is available immediately (where immediately
         * means after getch() 1 second delay), that means that the
         * ESC key was not pressed.
         *
         * man 3X curs_getch says:
         *
         * Use of the escape key by a programmer for a single
         * character function is discouraged, as it will cause a delay
         * of up to one second while the keypad code looks for a
         * following function-key sequence.
         *
         */
        if (FUNC5() == ERR)
            sys->box_type = BOX_PLAYLIST;
        return;

    case KEY_BACKSPACE:
    case 0x7f:
        FUNC1(str, len);
        break;

    default:
        if (len + 1 < (search ? sizeof sys->search_chain
                              : sizeof sys->open_chain)) {
            str[len + 0] = key;
            str[len + 1] = '\0';
        }
    }

    if (search)
        FUNC2(sys);
}
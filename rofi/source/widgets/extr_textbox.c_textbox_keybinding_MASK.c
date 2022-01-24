#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int flags; } ;
typedef  TYPE_1__ textbox ;
typedef  int KeyBindingAction ;

/* Variables and functions */
#define  CLEAR_LINE 140 
#define  MOVE_CHAR_BACK 139 
#define  MOVE_CHAR_FORWARD 138 
#define  MOVE_END 137 
#define  MOVE_FRONT 136 
#define  MOVE_WORD_BACK 135 
#define  MOVE_WORD_FORWARD 134 
#define  REMOVE_CHAR_BACK 133 
#define  REMOVE_CHAR_FORWARD 132 
#define  REMOVE_TO_EOL 131 
#define  REMOVE_TO_SOL 130 
#define  REMOVE_WORD_BACK 129 
#define  REMOVE_WORD_FORWARD 128 
 int TB_EDITABLE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char*) ; 

int FUNC14 ( textbox *tb, KeyBindingAction action )
{
    if ( tb == NULL ) {
        return 0;
    }
    if ( !( tb->flags & TB_EDITABLE ) ) {
        return 0;
    }

    switch ( action )
    {
    // Left or Ctrl-b
    case MOVE_CHAR_BACK:
        return ( FUNC4 ( tb ) == TRUE ) ? 2 : 0;
    // Right or Ctrl-F
    case MOVE_CHAR_FORWARD:
        return ( FUNC11 ( tb ) == TRUE ) ? 2 : 0;
    // Ctrl-U: Kill from the beginning to the end of the line.
    case CLEAR_LINE:
        FUNC13 ( tb, "" );
        return 1;
    // Ctrl-A
    case MOVE_FRONT:
        FUNC1 ( tb, 0 );
        return 2;
    // Ctrl-E
    case MOVE_END:
        FUNC10 ( tb );
        return 2;
    // Ctrl-Alt-h
    case REMOVE_WORD_BACK:
        FUNC3 ( tb );
        return 1;
    // Ctrl-Alt-d
    case REMOVE_WORD_FORWARD:
        FUNC9 ( tb );
        return 1;
    case REMOVE_TO_EOL:
        FUNC7 ( tb );
        return 1;
    case REMOVE_TO_SOL:
        FUNC8 ( tb );
        return 1;
    // Delete or Ctrl-D
    case REMOVE_CHAR_FORWARD:
        FUNC6 ( tb );
        return 1;
    // Alt-B, Ctrl-Left
    case MOVE_WORD_BACK:
        FUNC5 ( tb );
        return 2;
    // Alt-F, Ctrl-Right
    case MOVE_WORD_FORWARD:
        FUNC12 ( tb );
        return 2;
    // BackSpace, Shift-BackSpace, Ctrl-h
    case REMOVE_CHAR_BACK:
        FUNC2 ( tb );
        return 1;
    default:
        FUNC0 ( 0 );
    }
}
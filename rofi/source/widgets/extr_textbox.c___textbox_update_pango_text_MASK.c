#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int flags; char* text; int tbft; int /*<<< orphan*/  layout; } ;
typedef  TYPE_1__ textbox ;

/* Variables and functions */
 int MARKUP ; 
 int TB_MARKUP ; 
 int TB_PASSWORD ; 
 size_t FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC5 ( textbox *tb )
{
    FUNC2 ( tb->layout, NULL );
    if ( ( tb->flags & TB_PASSWORD ) == TB_PASSWORD ) {
        size_t l = FUNC0 ( tb->text, -1 );
        char   string [l + 1];
        FUNC1 ( string, '*', l );
        string[l] = '\0';
        FUNC4 ( tb->layout, string, l );
    }
    else if ( tb->flags & TB_MARKUP || tb->tbft & MARKUP ) {
        FUNC3 ( tb->layout, tb->text, -1 );
    }
    else {
        FUNC4 ( tb->layout, tb->text, -1 );
    }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ cursor; int /*<<< orphan*/  text; } ;
typedef  TYPE_1__ textbox ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void FUNC2 ( textbox *tb )
{
    if ( tb && tb->cursor >= 0 ) {
        int length = FUNC0 ( tb->text, -1 ) - tb->cursor;
        if ( length >= 0 ) {
            FUNC1 ( tb, tb->cursor, length );
        }
    }
}
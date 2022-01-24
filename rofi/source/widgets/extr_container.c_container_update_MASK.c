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
typedef  int /*<<< orphan*/  widget ;
struct TYPE_3__ {struct TYPE_3__* child; scalar_t__ enabled; } ;
typedef  TYPE_1__ container ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7 ( widget *wid  )
{
    container *b = (container *) wid;
    if ( b->child && b->child->enabled ) {
        FUNC6 ( FUNC0 ( b->child ),
                        FUNC4  ( FUNC0 ( b ) ),
                        FUNC3 ( FUNC0 ( b ) )
                        );
        FUNC1 ( FUNC0 ( b->child ),
                      FUNC2 ( FUNC0 ( b ) ),
                      FUNC5 ( FUNC0 ( b ) )
                      );
    }
}
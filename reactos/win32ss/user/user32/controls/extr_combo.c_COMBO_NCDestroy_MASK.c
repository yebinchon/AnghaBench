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
struct TYPE_5__ {int /*<<< orphan*/  self; scalar_t__ hWndLBox; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_1__* LPHEADCOMBO ;

/* Variables and functions */
 scalar_t__ CBS_SIMPLE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT FUNC6( LPHEADCOMBO lphc )
{

   if( lphc )
   {
       FUNC5("[%p]: freeing storage\n", lphc->self);

       if( (FUNC0(lphc) != CBS_SIMPLE) && lphc->hWndLBox )
   	   FUNC1( lphc->hWndLBox );

       FUNC4( lphc->self, 0, 0 );
       FUNC3( FUNC2(), 0, lphc );
   }
   return 0;
}
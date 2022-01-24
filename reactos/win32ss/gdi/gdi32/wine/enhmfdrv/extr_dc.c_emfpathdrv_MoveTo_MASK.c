#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* funcs; } ;
struct TYPE_10__ {scalar_t__ (* pMoveTo ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__* PHYSDEV ;
typedef  int /*<<< orphan*/  INT ;
typedef  int BOOL ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  pMoveTo ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC4( PHYSDEV dev, INT x, INT y )
{
    PHYSDEV emfdev = FUNC1( dev );
    PHYSDEV next = FUNC0( dev, pMoveTo );

    return (emfdev->funcs->pMoveTo( emfdev, x, y ) && next->funcs->pMoveTo( next, x, y ));
}
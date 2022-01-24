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
struct TYPE_7__ {int /*<<< orphan*/  len; } ;
struct TYPE_6__ {int bottom; void* right; scalar_t__ top; void* left; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ ME_Run ;
typedef  int /*<<< orphan*/  ME_Context ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3( ME_Context *c, ME_Run *run, int from, int to, int cy, RECT *r )
{
    from = FUNC1( 0, from );
    to = FUNC2( run->len, to );
    r->left = FUNC0( c, run, from, TRUE );
    r->top = 0;
    r->right = FUNC0( c, run, to, TRUE );
    r->bottom = cy;
    return;
}
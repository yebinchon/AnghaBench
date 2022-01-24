#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dirstack {struct dirstack* len_dirs; struct dirstack* dirs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dirstack*) ; 
 int /*<<< orphan*/  FUNC1 (struct dirstack*) ; 

__attribute__((used)) static void FUNC2( struct dirstack *dirstack )
{
    FUNC0( dirstack );
    FUNC1( dirstack->dirs );
    FUNC1( dirstack->len_dirs );
    FUNC1( dirstack );
}
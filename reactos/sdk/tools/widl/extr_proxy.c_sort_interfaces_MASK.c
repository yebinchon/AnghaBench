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
typedef  int /*<<< orphan*/  type_t ;
typedef  int /*<<< orphan*/  statement_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ***,int*) ; 
 int /*<<< orphan*/  cmp_iid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static type_t **FUNC2( const statement_list_t *stmts, int *count )
{
    type_t **ifaces = NULL;

    *count = 0;
    FUNC0( stmts, &ifaces, count );
    FUNC1( ifaces, *count, sizeof(*ifaces), cmp_iid );
    return ifaces;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  s; } ;
struct reader {int /*<<< orphan*/  p_data; TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct reader*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3( struct reader *p_reader )
{
    FUNC2( p_reader->u.s );
    FUNC1( p_reader->p_data );
    FUNC0( p_reader );
}
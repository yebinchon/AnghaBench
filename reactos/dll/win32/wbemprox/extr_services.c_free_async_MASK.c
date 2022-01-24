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
struct async_header {int /*<<< orphan*/  wait; int /*<<< orphan*/  cancel; scalar_t__ sink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct async_header*) ; 

__attribute__((used)) static void FUNC3( struct async_header *async )
{
    if (async->sink) FUNC1( async->sink );
    FUNC0( async->cancel );
    FUNC0( async->wait );
    FUNC2( async );
}
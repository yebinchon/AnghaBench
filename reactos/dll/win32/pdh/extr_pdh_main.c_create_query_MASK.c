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
struct query {int /*<<< orphan*/  counters; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  PDH_MAGIC_QUERY ; 
 struct query* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct query *FUNC2( void )
{
    struct query *query;

    if ((query = FUNC0( sizeof(struct query) )))
    {
        query->magic = PDH_MAGIC_QUERY;
        FUNC1( &query->counters );
        return query;
    }
    return NULL;
}
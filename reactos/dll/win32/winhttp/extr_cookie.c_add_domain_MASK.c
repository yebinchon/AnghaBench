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
struct TYPE_6__ {int /*<<< orphan*/  cookie_cache; } ;
typedef  TYPE_1__ session_t ;
struct TYPE_7__ {int /*<<< orphan*/  name; int /*<<< orphan*/  entry; int /*<<< orphan*/  cookies; } ;
typedef  TYPE_2__ domain_t ;
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static domain_t *FUNC6( session_t *session, WCHAR *name )
{
    domain_t *domain;

    if (!(domain = FUNC2( sizeof(domain_t) ))) return NULL;

    FUNC4( &domain->entry );
    FUNC4( &domain->cookies );

    domain->name = FUNC5( name );
    FUNC3( &session->cookie_cache, &domain->entry );

    FUNC0("%s\n", FUNC1(domain->name));
    return domain;
}
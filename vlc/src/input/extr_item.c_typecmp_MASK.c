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
struct item_type_entry {char* psz_scheme; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2( const void *key, const void *entry )
{
    const struct item_type_entry *type = entry;
    const char *uri = key, *scheme = type->psz_scheme;

    return FUNC1( uri, scheme, FUNC0( scheme ) );
}
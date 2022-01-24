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
struct filter_mode_t {char* psz_mode; } ;

/* Variables and functions */
 size_t FUNC0 (struct filter_mode_t const*) ; 
 struct filter_mode_t const* filter_mode ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static const struct filter_mode_t *FUNC2(const char *mode)
{
    if ( mode == NULL || !FUNC1( mode, "auto" ) )
        mode = "x";

    for (size_t i=0; i<FUNC0(filter_mode); i++)
    {
        if( !FUNC1( mode, filter_mode[i].psz_mode ) )
            return &filter_mode[i];
    }

    return NULL;
}
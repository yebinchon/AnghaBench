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

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 size_t FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,size_t const) ; 

__attribute__((used)) static bool FUNC3( const char *psz, const char *keyword )
{
    const size_t i_len = FUNC1(keyword);
    return( !FUNC2( keyword, psz, i_len ) && (!psz[i_len] || FUNC0(psz[i_len])) );
}
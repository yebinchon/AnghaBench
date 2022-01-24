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
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static inline char *FUNC3( const char *src )
{
    char *dst;
    if (!src) return NULL;
    if ((dst = FUNC0( (FUNC2( src ) + 1) * sizeof(char) ))) FUNC1( dst, src );
    return dst;
}
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
typedef  char* DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (char) ; 
 char const* FUNC3 (char*,char*) ; 

__attribute__((used)) static inline const char *FUNC4( DWORD fcc )
{
    char fcc_str[5];
    FUNC0(fcc_str, fcc);
    fcc_str[4] = '\0';
    /* Last byte may be ' ' in some cases like "DIB " */
    if (FUNC1(fcc_str[0]) && FUNC1(fcc_str[1]) && FUNC1(fcc_str[2])
    && (FUNC1(fcc_str[3]) || FUNC2(fcc_str[3])))
        return FUNC3("%s", fcc_str);
    return FUNC3("0x%08x", fcc);
}
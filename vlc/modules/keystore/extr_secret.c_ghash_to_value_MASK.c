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
typedef  void* gpointer ;

/* Variables and functions */
 int KEY_MAX ; 
 int FUNC0 (char const*) ; 
 char* FUNC1 (char const*) ; 

__attribute__((used)) static void
FUNC2(gpointer key, gpointer value, gpointer user_data)
{
    const char **ppsz_values = user_data;

    const char *psz_key = key;
    int i_key = FUNC0(psz_key);
    if (i_key == -1 || i_key >= KEY_MAX)
        return;

    ppsz_values[i_key] = FUNC1((const char *)value);
}
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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int g_max_name_len ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*,int const,char*,char const*,int const,char*,char const*,int const,char*) ; 

void FUNC2(
    FILE* results,
    char const* data_name,
    char const* config_name,
    char const* method_name) {
    int const data_padding = g_max_name_len - FUNC0(data_name);
    int const config_padding = g_max_name_len - FUNC0(config_name);
    int const method_padding = g_max_name_len - FUNC0(method_name);

    FUNC1(
        results,
        "%s, %*s%s, %*s%s, %*s",
        data_name,
        data_padding,
        "",
        config_name,
        config_padding,
        "",
        method_name,
        method_padding,
        "");
}
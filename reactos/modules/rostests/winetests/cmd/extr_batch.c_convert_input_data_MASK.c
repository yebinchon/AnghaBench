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
typedef  int /*<<< orphan*/  escaped_tab ;
typedef  int /*<<< orphan*/  escaped_space ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int) ; 
 size_t FUNC3 (char*) ; 

__attribute__((used)) static const char* FUNC4(const char *data, DWORD size, DWORD *new_size)
{
    static const char escaped_space[] = {'@','s','p','a','c','e','@'};
    static const char escaped_tab[]   = {'@','t','a','b','@'};
    DWORD i, eol_count = 0;
    char *ptr, *new_data;

    for (i = 0; i < size; i++)
        if (data[i] == '\n') eol_count++;

    ptr = new_data = FUNC1(FUNC0(), 0, size + eol_count + 1);

    for (i = 0; i < size; i++) {
        switch (data[i]) {
            case '\n':
                if (data[i-1] != '\r')
                    *ptr++ = '\r';
                *ptr++ = '\n';
                break;
            case '@':
                if (data + i + sizeof(escaped_space) - 1 < data + size
                        && !FUNC2(data + i, escaped_space, sizeof(escaped_space))) {
                    *ptr++ = ' ';
                    i += sizeof(escaped_space) - 1;
                } else if (data + i + sizeof(escaped_tab) - 1 < data + size
                        && !FUNC2(data + i, escaped_tab, sizeof(escaped_tab))) {
                    *ptr++ = '\t';
                    i += sizeof(escaped_tab) - 1;
                } else {
                    *ptr++ = data[i];
                }
                break;
            default:
                *ptr++ = data[i];
        }
    }
    *ptr = '\0';

    *new_size = FUNC3(new_data);
    return new_data;
}
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
typedef  int /*<<< orphan*/  (* KeyValueFunc ) (void*,char*,char*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

void FUNC1 (char *string, KeyValueFunc func, void *data)
{
    char *line = string, *next, *space;
    char *key, *value;

    while (*line) {
        /* handle empty line */
        if (*line == '\n') {
            ++line;
            continue;
        }

        for (next = line; *next != '\n' && *next; ++next) ;
        *next = '\0';
        
        for (space = line; space < next && *space != ' '; ++space) ;
        if (*space != ' ') {
            FUNC0 ("Bad key value format: %s\n", line);
            return;
        }
        *space = '\0';
        key = line;
        value = space + 1;
        
        func (data, key, value);

        line = next + 1;
    }
}
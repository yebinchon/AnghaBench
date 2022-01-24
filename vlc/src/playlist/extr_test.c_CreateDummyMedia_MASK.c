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
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int FUNC0 (char**,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 

__attribute__((used)) static input_item_t *
FUNC3(int num)
{
    char *url;
    char *name;

    int res = FUNC0(&url, "vlc://item-%d", num);
    if (res == -1)
        return NULL;

    res = FUNC0(&name, "item-%d", num);
    if (res == -1)
        return NULL;

    input_item_t *media = FUNC2(url, name);
    FUNC1(url);
    FUNC1(name);
    return media;
}
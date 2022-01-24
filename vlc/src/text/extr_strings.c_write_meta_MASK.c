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
typedef  int /*<<< orphan*/  vlc_meta_type_t ;
struct vlc_memstream {int dummy; } ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vlc_memstream*,char*) ; 

__attribute__((used)) static int FUNC3(struct vlc_memstream *stream, input_item_t *item,
                      vlc_meta_type_t type)
{
    if (item == NULL)
        return EOF;

    char *value = FUNC1(item, type);
    if (value == NULL)
        return EOF;

    FUNC2(stream, value);
    FUNC0(value);
    return 0;
}
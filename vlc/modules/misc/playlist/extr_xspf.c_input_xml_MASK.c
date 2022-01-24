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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 

__attribute__((used)) static char *FUNC2( input_item_t *p_item, char *(*func)(input_item_t *) )
{
    char *tmp = func( p_item );
    if( tmp == NULL )
        return NULL;
    char *ret = FUNC1( tmp );
    FUNC0( tmp );
    return ret;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* psz_text; } ;
typedef  TYPE_1__ text_segment_t ;

/* Variables and functions */
 char* FUNC0 (char*,char) ; 

__attribute__((used)) static void FUNC1( text_segment_t *p_segment )
{
    /* Newlines must be replaced */
    char *p = p_segment->psz_text;
    while( (p = FUNC0( p, '\n' )) )
        *p = ' ';
}
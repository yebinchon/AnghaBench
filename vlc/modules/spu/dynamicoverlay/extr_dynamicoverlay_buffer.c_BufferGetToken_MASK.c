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
struct TYPE_3__ {char* p_begin; int i_length; } ;
typedef  TYPE_1__ buffer_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 

char *FUNC1( buffer_t *p_buffer )
{
    char *p_char = p_buffer->p_begin;

    while( FUNC0( (unsigned char)p_char[0] ) || p_char[0] == '\0' )
    {
        if( p_char <= (p_buffer->p_begin + p_buffer->i_length) )
            p_char++;
        else
            return NULL;
    }
    return p_char;
}
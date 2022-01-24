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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static char *FUNC3( const uint8_t *p_peek, size_t i_peek, uint8_t **pp_data, size_t i_size )
{
    uint8_t *p_data = *pp_data;
    char *psz_string = NULL;
    if( FUNC0(i_size) )
    {
        psz_string = FUNC2( "UTF-16LE", p_data, i_size );
    }
    FUNC1(i_size);
    *pp_data = p_data;
    return psz_string;
}
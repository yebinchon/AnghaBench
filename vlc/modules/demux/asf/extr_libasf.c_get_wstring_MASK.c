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
 char* FUNC0 (char*,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static inline char *FUNC1( const uint8_t *p_data, size_t i_size )
{
    char *psz_str = FUNC0( "UTF-16LE", p_data, i_size );
    if( psz_str )
        p_data += i_size;
    return psz_str;
}
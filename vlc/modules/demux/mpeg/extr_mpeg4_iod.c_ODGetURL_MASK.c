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
 unsigned int FUNC0 (unsigned int*,int /*<<< orphan*/  const**,int) ; 
 char* FUNC1 (char*,unsigned int) ; 

__attribute__((used)) static char* FUNC2( unsigned *pi_data, const uint8_t **pp_data )
{
    unsigned len = FUNC0( pi_data, pp_data, 1 );
    if (len > *pi_data)
        len = *pi_data;
    char *url = FUNC1( (char*)*pp_data, len );
    *pp_data += len;
    *pi_data -= len;
    return url;
}
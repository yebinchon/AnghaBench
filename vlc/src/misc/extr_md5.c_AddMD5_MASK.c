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
struct md5_s {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct md5_s*,void const*,size_t) ; 

void FUNC1( struct md5_s *restrict h, const void *data, size_t len )
{
    FUNC0( h, data, len );
}
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
typedef  int /*<<< orphan*/  pf_hxxx_sei_callback ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const**,size_t*) ; 

void FUNC2(const uint8_t *p_buf, size_t i_buf,
                          uint8_t i_header, pf_hxxx_sei_callback cb, void *cbdata)
{
    if( FUNC1( &p_buf, &i_buf ) )
        FUNC0(p_buf, i_buf, i_header, cb, cbdata);
}
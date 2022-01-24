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
typedef  scalar_t__ OPJ_UINT32 ;
typedef  int /*<<< orphan*/  OPJ_BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__) ; 

void FUNC2(const OPJ_BYTE * p_buffer, OPJ_UINT32 * p_value,
                       OPJ_UINT32 p_nb_bytes)
{
    OPJ_BYTE * l_data_ptr = ((OPJ_BYTE *) p_value);

    FUNC0(p_nb_bytes > 0 && p_nb_bytes <= sizeof(OPJ_UINT32));

    *p_value = 0;
    FUNC1(l_data_ptr + sizeof(OPJ_UINT32) - p_nb_bytes, p_buffer, p_nb_bytes);
}
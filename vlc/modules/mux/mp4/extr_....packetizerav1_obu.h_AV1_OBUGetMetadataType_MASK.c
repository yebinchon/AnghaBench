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
typedef  scalar_t__ uint8_t ;
typedef  int uint64_t ;
typedef  enum av1_obu_metadata_type_e { ____Placeholder_av1_obu_metadata_type_e } av1_obu_metadata_type_e ;

/* Variables and functions */
 int AV1_METADATA_TYPE_RESERVED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__ const**,size_t*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (scalar_t__ const*,size_t,scalar_t__*) ; 

__attribute__((used)) static inline enum av1_obu_metadata_type_e
        FUNC3(const uint8_t *p_buf, size_t i_buf)
{
    if(!FUNC0(&p_buf, &i_buf) || i_buf < 1)
        return AV1_METADATA_TYPE_RESERVED;

    uint8_t i_len;
    uint64_t i_type = FUNC2(p_buf, i_buf, &i_len);
    if(i_len == 0 || i_type > ((FUNC1(1) << 32) - 1))
        return AV1_METADATA_TYPE_RESERVED;
    return (enum av1_obu_metadata_type_e) i_type;
}
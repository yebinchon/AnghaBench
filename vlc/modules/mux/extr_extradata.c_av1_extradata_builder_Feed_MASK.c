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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  p_extra; scalar_t__ i_extra; } ;
typedef  TYPE_1__ mux_extradata_builder_t ;
typedef  enum av1_obu_type_e { ____Placeholder_av1_obu_type_e } av1_obu_type_e ;
typedef  int /*<<< orphan*/  av1_OBU_sequence_header_t ;
typedef  int /*<<< orphan*/  AV1_OBU_iterator_ctx_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int AV1_OBU_SEQUENCE_HEADER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const**,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(mux_extradata_builder_t *m,
                                       const uint8_t *p_data, size_t i_data)
{
    if(m->i_extra)
        return;

    AV1_OBU_iterator_ctx_t ctx;
    FUNC2(&ctx, p_data, i_data);
    const uint8_t *p_obu; size_t i_obu;
    while(FUNC1(&ctx, &p_obu, &i_obu))
    {
        enum av1_obu_type_e OBUtype = FUNC0(p_obu);
        if(OBUtype != AV1_OBU_SEQUENCE_HEADER)
            continue;
        av1_OBU_sequence_header_t *p_sh = FUNC3(p_obu, i_obu);
        if(p_sh)
        {
            m->i_extra = FUNC4(&m->p_extra, p_sh,
                                                               1, (const uint8_t **)&p_obu, &i_obu);
            FUNC5(p_sh);
        }
        break;
    }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  bs_t ;
typedef  int /*<<< orphan*/  av1_OBU_sequence_header_t ;
struct TYPE_5__ {int /*<<< orphan*/  header; int /*<<< orphan*/  obu_header; } ;
typedef  TYPE_1__ av1_OBU_frame_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 TYPE_1__* FUNC4 (int,int) ; 

av1_OBU_frame_header_t *
    FUNC5(const uint8_t *p_data, size_t i_data,
                               const av1_OBU_sequence_header_t *p_seq)
{
    bs_t bs;
    FUNC3(&bs, p_data, i_data);

    av1_OBU_frame_header_t *p_fh = FUNC4(1, sizeof(*p_fh));
    if(!p_fh)
        return NULL;

    if(!FUNC2(&bs, &p_fh->obu_header) ||
       !FUNC1(&bs, &p_fh->header, p_seq))
    {
        FUNC0(p_fh);
        return NULL;
    }

    return p_fh;
}
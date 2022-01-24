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
struct hxxx_helper_nal {TYPE_1__* b; } ;
struct TYPE_5__ {size_t i_buffer; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_1__ block_t ;

/* Variables and functions */
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 TYPE_1__* FUNC0 (size_t) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static int
FUNC3(struct hxxx_helper_nal *p_nal,
               const uint8_t *p_nal_buf, size_t i_nal_buf)
{
    if (!p_nal->b)
    {
        p_nal->b = FUNC0(i_nal_buf);
        if (!p_nal->b)
            return VLC_ENOMEM;
    }
    else if (p_nal->b != NULL && i_nal_buf > p_nal->b->i_buffer)
    {
        block_t *b = FUNC1(p_nal->b, 0, i_nal_buf);
        if (b == NULL)
            return VLC_ENOMEM;
        p_nal->b = b;
    }
    FUNC2(p_nal->b->p_buffer, p_nal_buf, i_nal_buf);
    p_nal->b->i_buffer = i_nal_buf;
    return VLC_SUCCESS;
}
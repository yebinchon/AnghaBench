#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_4__ {TYPE_2__* p_cw; int /*<<< orphan*/  b_text_waiting; int /*<<< orphan*/  input_buffer; } ;
typedef  TYPE_1__ cea708_t ;
typedef  int /*<<< orphan*/  cea708_input_buffer_t ;
struct TYPE_5__ {int /*<<< orphan*/  b_visible; int /*<<< orphan*/  b_defined; } ;

/* Variables and functions */
 int CEA708_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int FUNC2( uint8_t code, cea708_t *p_cea708 )
{
    cea708_input_buffer_t *ib = &p_cea708->input_buffer;
    FUNC1();

    if( !p_cea708->p_cw->b_defined )
        return CEA708_STATUS_OK;

    uint8_t utf8[4] = {0xc0 | (code & 0xc0) >> 6,
                       0x80 | (code & 0x3f),
                       0, 0};

    FUNC0( utf8, p_cea708->p_cw );
    p_cea708->b_text_waiting |= p_cea708->p_cw->b_visible;

    return CEA708_STATUS_OK;
}
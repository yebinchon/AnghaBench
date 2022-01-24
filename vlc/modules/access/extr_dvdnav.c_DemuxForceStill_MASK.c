#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  out; } ;
typedef  TYPE_1__ demux_t ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int const*,int) ; 
 int /*<<< orphan*/  ES_OUT_GET_EMPTY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC2( demux_t *p_demux )
{
    static const uint8_t buffer[] = {
        0x00, 0x00, 0x01, 0xe0, 0x00, 0x07,
        0x80, 0x00, 0x00,
        0x00, 0x00, 0x01, 0xB7,
    };
    FUNC0( p_demux, buffer, sizeof(buffer) );

    bool b_empty;
    FUNC1( p_demux->out, ES_OUT_GET_EMPTY, &b_empty );
}
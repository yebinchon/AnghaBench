#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ int16_t ;
typedef  int /*<<< orphan*/  demux_t ;
struct TYPE_10__ {int* p_buffer; size_t i_buffer; scalar_t__ i_nb_samples; scalar_t__ i_length; int /*<<< orphan*/  i_flags; } ;
typedef  TYPE_1__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_FLAG_PREROLL ; 
 TYPE_1__* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__***,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC6 (int*,unsigned int) ; 
 scalar_t__ FUNC7 (int**,size_t*) ; 

__attribute__((used)) static block_t *FUNC8(demux_t *demux, block_t *block)
{
    block_t *p_chain = NULL;
    block_t **pp_chain_last = &p_chain;

    uint8_t *buf = block->p_buffer;
    size_t len = block->i_buffer;

    while (len > 3 && ((buf[0] << 3) | (buf[1] >> 5)) == 0x3ff) {
        int16_t start_trim = 0, end_trim = 0;
        int start_trim_flag        = (buf[1] >> 4) & 1;
        int end_trim_flag          = (buf[1] >> 3) & 1;
        int control_extension_flag = (buf[1] >> 2) & 1;

        len -= 2;
        buf += 2;

        unsigned au_size = 0;
        while (len--) {
            int c = *buf++;
            au_size += c;
            if (c != 0xff)
                break;
        }

        if (start_trim_flag) {
            start_trim = FUNC7(&buf, &len);
            if (start_trim < 0) {
                FUNC5(demux, "Invalid start trimming flag");
            }
        }
        if (end_trim_flag) {
            end_trim = FUNC7(&buf, &len);
            if (end_trim < 0) {
                FUNC5(demux, "Invalid end trimming flag");
            }
        }
        if (control_extension_flag && len) {
            unsigned l = *buf++; len--;
            if (l > len) {
                FUNC5(demux, "Invalid control extension length %d > %zu", l, len);
                break;
            }
            buf += l;
            len -= l;
        }

        if (!au_size || au_size > len) {
            FUNC5(demux, "Invalid Opus AU size %d (PES %zu)", au_size, len);
            break;
        }

        block_t *au = FUNC0(au_size);
        if (!au)
            break;
        FUNC4(au->p_buffer, buf, au_size);
        FUNC2(au, block);
        FUNC1( &pp_chain_last, au );

        au->i_nb_samples = FUNC6(buf, au_size);
        if (end_trim && (uint16_t) end_trim <= au->i_nb_samples)
            au->i_length = end_trim; /* Blatant abuse of the i_length field. */
        else
            au->i_length = 0;

        if (start_trim && start_trim < (au->i_nb_samples - au->i_length)) {
            au->i_nb_samples -= start_trim;
            if (au->i_nb_samples == 0)
                au->i_flags |= BLOCK_FLAG_PREROLL;
        }

        buf += au_size;
        len -= au_size;
    }

    FUNC3(block);
    return p_chain;
}
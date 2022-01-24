#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  suffix ;
struct TYPE_2__ {scalar_t__ len; } ;
struct output_stream {int /*<<< orphan*/ * out; TYPE_1__ gif_block; } ;
struct lzw_state {int dummy; } ;
struct input_stream {int /*<<< orphan*/  len; int /*<<< orphan*/  const* in; } ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  IStream ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ E_FAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC1 (struct output_stream*) ; 
 int FUNC2 (struct lzw_state*,short,unsigned char) ; 
 short FUNC3 (struct lzw_state*,short,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (struct lzw_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct lzw_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct lzw_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct lzw_state*,short) ; 
 int /*<<< orphan*/  FUNC8 (struct lzw_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct lzw_state*,short,int /*<<< orphan*/ ,struct output_stream*) ; 
 scalar_t__ FUNC10 (struct input_stream*,unsigned char*) ; 
 int /*<<< orphan*/  write_data ; 

__attribute__((used)) static HRESULT FUNC11(IStream *out_stream, const BYTE *in_data, ULONG in_size)
{
    struct input_stream in;
    struct output_stream out;
    struct lzw_state state;
    short init_code_bits, prefix, code;
    unsigned char suffix;

    in.in = in_data;
    in.len = in_size;

    out.gif_block.len = 0;
    out.out = out_stream;

    init_code_bits = suffix = 8;
    if (FUNC0(out.out, &suffix, sizeof(suffix), NULL) != S_OK)
        return E_FAIL;

    FUNC9(&state, init_code_bits, write_data, &out);

    if (!FUNC6(&state))
        return E_FAIL;

    if (FUNC10(&in, &suffix))
    {
        prefix = suffix;

        while (FUNC10(&in, &suffix))
        {
            code = FUNC3(&state, prefix, suffix);
            if (code == -1)
            {
                if (!FUNC7(&state, prefix))
                    return E_FAIL;

                if (FUNC2(&state, prefix, suffix) == -1)
                {
                    if (!FUNC6(&state))
                        return E_FAIL;
                    FUNC4(&state);
                }

                prefix = suffix;
            }
            else
                prefix = code;
        }

        if (!FUNC7(&state, prefix))
            return E_FAIL;
        if (!FUNC8(&state))
            return E_FAIL;
        if (!FUNC5(&state))
            return E_FAIL;
    }

    return FUNC1(&out) ? S_OK : E_FAIL;
}
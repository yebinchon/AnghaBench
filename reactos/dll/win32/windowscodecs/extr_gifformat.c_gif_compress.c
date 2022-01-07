
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int suffix ;
struct TYPE_2__ {scalar_t__ len; } ;
struct output_stream {int * out; TYPE_1__ gif_block; } ;
struct lzw_state {int dummy; } ;
struct input_stream {int len; int const* in; } ;
typedef int ULONG ;
typedef int IStream ;
typedef scalar_t__ HRESULT ;
typedef int BYTE ;


 scalar_t__ E_FAIL ;
 scalar_t__ IStream_Write (int *,unsigned char*,int,int *) ;
 scalar_t__ S_OK ;
 scalar_t__ flush_output_data (struct output_stream*) ;
 int lzw_dict_add (struct lzw_state*,short,unsigned char) ;
 short lzw_dict_lookup (struct lzw_state*,short,unsigned char) ;
 int lzw_dict_reset (struct lzw_state*) ;
 int lzw_flush_bits (struct lzw_state*) ;
 int lzw_output_clear_code (struct lzw_state*) ;
 int lzw_output_code (struct lzw_state*,short) ;
 int lzw_output_eof_code (struct lzw_state*) ;
 int lzw_state_init (struct lzw_state*,short,int ,struct output_stream*) ;
 scalar_t__ read_byte (struct input_stream*,unsigned char*) ;
 int write_data ;

__attribute__((used)) static HRESULT gif_compress(IStream *out_stream, const BYTE *in_data, ULONG in_size)
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
    if (IStream_Write(out.out, &suffix, sizeof(suffix), ((void*)0)) != S_OK)
        return E_FAIL;

    lzw_state_init(&state, init_code_bits, write_data, &out);

    if (!lzw_output_clear_code(&state))
        return E_FAIL;

    if (read_byte(&in, &suffix))
    {
        prefix = suffix;

        while (read_byte(&in, &suffix))
        {
            code = lzw_dict_lookup(&state, prefix, suffix);
            if (code == -1)
            {
                if (!lzw_output_code(&state, prefix))
                    return E_FAIL;

                if (lzw_dict_add(&state, prefix, suffix) == -1)
                {
                    if (!lzw_output_clear_code(&state))
                        return E_FAIL;
                    lzw_dict_reset(&state);
                }

                prefix = suffix;
            }
            else
                prefix = code;
        }

        if (!lzw_output_code(&state, prefix))
            return E_FAIL;
        if (!lzw_output_eof_code(&state))
            return E_FAIL;
        if (!lzw_flush_bits(&state))
            return E_FAIL;
    }

    return flush_output_data(&out) ? S_OK : E_FAIL;
}

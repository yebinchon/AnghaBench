
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int ULONG ;
typedef int UCHAR ;
typedef int * PUCHAR ;



__attribute__((used)) static PUCHAR lznt1_decompress_chunk(UCHAR *dst, ULONG dst_size, UCHAR *src, ULONG src_size)
{
    UCHAR *src_cur, *src_end, *dst_cur, *dst_end;
    ULONG displacement_bits, length_bits;
    ULONG code_displacement, code_length;
    WORD flags, code;

    src_cur = src;
    src_end = src + src_size;
    dst_cur = dst;
    dst_end = dst + dst_size;


    while (src_cur < src_end && dst_cur < dst_end)
    {

        flags = 0x8000 | *src_cur++;


        while ((flags & 0xFF00) && src_cur < src_end)
        {
            if (flags & 1)
            {

                if (src_cur + sizeof(WORD) > src_end)
                    return ((void*)0);
                code = *(WORD *)src_cur;
                src_cur += sizeof(WORD);


                for (displacement_bits = 12; displacement_bits > 4; displacement_bits--)
                    if ((1 << (displacement_bits - 1)) < dst_cur - dst) break;
                length_bits = 16 - displacement_bits;
                code_length = (code & ((1 << length_bits) - 1)) + 3;
                code_displacement = (code >> length_bits) + 1;


                if (dst_cur < dst + code_displacement)
                    return ((void*)0);



                while (code_length--)
                {
                    if (dst_cur >= dst_end) return dst_cur;
                    *dst_cur = *(dst_cur - code_displacement);
                    dst_cur++;
                }
            }
            else
            {

                if (dst_cur >= dst_end) return dst_cur;
                *dst_cur++ = *src_cur++;
            }
            flags >>= 1;
        }

    }

    return dst_cur;
}

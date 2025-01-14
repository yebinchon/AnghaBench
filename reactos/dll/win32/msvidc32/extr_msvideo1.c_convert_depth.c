
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_3__ {int biWidth; int biBitCount; int biHeight; } ;
typedef TYPE_1__ BITMAPINFOHEADER ;


 int FIXME (char*,int,int) ;
 int get_stride (int,int) ;

__attribute__((used)) static void convert_depth(char *input, int depth_in, char *output, BITMAPINFOHEADER *out_hdr)
{
    int x, y;
    int stride_in = get_stride(out_hdr->biWidth, depth_in);
    int stride_out = get_stride(out_hdr->biWidth, out_hdr->biBitCount);

    if (depth_in == 16 && out_hdr->biBitCount == 24)
    {
        static const unsigned char convert_5to8[] =
        {
            0x00, 0x08, 0x10, 0x19, 0x21, 0x29, 0x31, 0x3a,
            0x42, 0x4a, 0x52, 0x5a, 0x63, 0x6b, 0x73, 0x7b,
            0x84, 0x8c, 0x94, 0x9c, 0xa5, 0xad, 0xb5, 0xbd,
            0xc5, 0xce, 0xd6, 0xde, 0xe6, 0xef, 0xf7, 0xff,
        };

        for (y = 0; y < out_hdr->biHeight; y++)
        {
            WORD *src_row = (WORD *)(input + y * stride_in);
            char *out_row = output + y * stride_out;

            for (x = 0; x < out_hdr->biWidth; x++)
            {
                WORD pixel = *src_row++;
                *out_row++ = convert_5to8[(pixel & 0x7c00u) >> 10];
                *out_row++ = convert_5to8[(pixel & 0x03e0u) >> 5];
                *out_row++ = convert_5to8[(pixel & 0x001fu)];
            }
        }
    }
    else
        FIXME("Conversion from %d to %d bit unimplemented\n", depth_in, out_hdr->biBitCount);
}

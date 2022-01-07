
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK_STREAM_PTR (int) ;
 unsigned short LE_16 (unsigned char const*) ;

__attribute__((used)) static void
msvideo1_decode_16bit( int width, int height, const unsigned char *buf, int buf_size,
                       unsigned short *pixels, int stride)
{
    int block_ptr, pixel_ptr;
    int total_blocks;
    int pixel_x, pixel_y;
    int block_x, block_y;
    int blocks_wide, blocks_high;
    int block_inc;
    int row_dec;


    int stream_ptr;
    unsigned char byte_a, byte_b;
    unsigned short flags;
    int skip_blocks;
    unsigned short colors[8];

    stream_ptr = 0;
    skip_blocks = 0;
    blocks_wide = width / 4;
    blocks_high = height / 4;
    total_blocks = blocks_wide * blocks_high;
    block_inc = 4;



    row_dec = - (stride - 4);


    for (block_y = blocks_high; block_y > 0; block_y--) {



        block_ptr = ((blocks_high - block_y) * 4) * stride;

        for (block_x = blocks_wide; block_x > 0; block_x--) {

            if (skip_blocks) {
                block_ptr += block_inc;
                skip_blocks--;
                total_blocks--;
                continue;
            }

            pixel_ptr = block_ptr;


            CHECK_STREAM_PTR(2);
            byte_a = buf[stream_ptr++];
            byte_b = buf[stream_ptr++];


            if ((byte_a == 0) && (byte_b == 0) && (total_blocks == 0)) {
                return;
            } else if ((byte_b & 0xFC) == 0x84) {

                skip_blocks = ((byte_b - 0x84) << 8) + byte_a - 1;
            } else if (byte_b < 0x80) {

                flags = (byte_b << 8) | byte_a;

                CHECK_STREAM_PTR(4);
                colors[0] = LE_16(&buf[stream_ptr]);
                stream_ptr += 2;
                colors[1] = LE_16(&buf[stream_ptr]);
                stream_ptr += 2;

                if (colors[0] & 0x8000) {

                    CHECK_STREAM_PTR(12);
                    colors[2] = LE_16(&buf[stream_ptr]);
                    stream_ptr += 2;
                    colors[3] = LE_16(&buf[stream_ptr]);
                    stream_ptr += 2;
                    colors[4] = LE_16(&buf[stream_ptr]);
                    stream_ptr += 2;
                    colors[5] = LE_16(&buf[stream_ptr]);
                    stream_ptr += 2;
                    colors[6] = LE_16(&buf[stream_ptr]);
                    stream_ptr += 2;
                    colors[7] = LE_16(&buf[stream_ptr]);
                    stream_ptr += 2;

                    for (pixel_y = 0; pixel_y < 4; pixel_y++) {
                        for (pixel_x = 0; pixel_x < 4; pixel_x++, flags >>= 1)
                            pixels[pixel_ptr++] =
                                colors[((pixel_y & 0x2) << 1) +
                                    (pixel_x & 0x2) + ((flags & 0x1) ^ 1)];
                        pixel_ptr -= row_dec;
                    }
                } else {

                    for (pixel_y = 0; pixel_y < 4; pixel_y++) {
                        for (pixel_x = 0; pixel_x < 4; pixel_x++, flags >>= 1)
                            pixels[pixel_ptr++] = colors[(flags & 0x1) ^ 1];
                        pixel_ptr -= row_dec;
                    }
                }
            } else {

                colors[0] = (byte_b << 8) | byte_a;

                for (pixel_y = 0; pixel_y < 4; pixel_y++) {
                    for (pixel_x = 0; pixel_x < 4; pixel_x++)
                        pixels[pixel_ptr++] = colors[0];
                    pixel_ptr -= row_dec;
                }
            }

            block_ptr += block_inc;
            total_blocks--;
        }
    }
}

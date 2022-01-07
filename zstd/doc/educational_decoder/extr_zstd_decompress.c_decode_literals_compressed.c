
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int ostream_t ;
typedef int istream_t ;
struct TYPE_8__ {int symbols; } ;
struct TYPE_7__ {TYPE_3__ literals_dtable; } ;
typedef TYPE_1__ frame_context_t ;


 int BAD_ALLOC () ;
 int CORRUPTION () ;
 size_t HUF_decompress_1stream (TYPE_3__*,int *,int *) ;
 size_t HUF_decompress_4stream (TYPE_3__*,int *,int *) ;
 int HUF_free_dtable (TYPE_3__*) ;
 int IMPOSSIBLE () ;
 int IO_make_ostream (int *,size_t) ;
 int IO_make_sub_istream (int * const,size_t) ;
 size_t IO_read_bits (int * const,int) ;
 size_t MAX_LITERALS_SIZE ;
 int decode_huf_table (TYPE_3__*,int *) ;
 int * malloc (size_t) ;

__attribute__((used)) static size_t decode_literals_compressed(frame_context_t *const ctx,
                                         istream_t *const in,
                                         u8 **const literals,
                                         const int block_type,
                                         const int size_format) {
    size_t regenerated_size, compressed_size;

    int num_streams = 4;
    switch (size_format) {
    case 0:


        num_streams = 1;


    case 1:


        regenerated_size = IO_read_bits(in, 10);
        compressed_size = IO_read_bits(in, 10);
        break;
    case 2:


        regenerated_size = IO_read_bits(in, 14);
        compressed_size = IO_read_bits(in, 14);
        break;
    case 3:


        regenerated_size = IO_read_bits(in, 18);
        compressed_size = IO_read_bits(in, 18);
        break;
    default:

        IMPOSSIBLE();
    }
    if (regenerated_size > MAX_LITERALS_SIZE) {
        CORRUPTION();
    }

    *literals = malloc(regenerated_size);
    if (!*literals) {
        BAD_ALLOC();
    }

    ostream_t lit_stream = IO_make_ostream(*literals, regenerated_size);
    istream_t huf_stream = IO_make_sub_istream(in, compressed_size);

    if (block_type == 2) {




        HUF_free_dtable(&ctx->literals_dtable);
        decode_huf_table(&ctx->literals_dtable, &huf_stream);
    } else {

        if (!ctx->literals_dtable.symbols) {
            CORRUPTION();
        }
    }

    size_t symbols_decoded;
    if (num_streams == 1) {
        symbols_decoded = HUF_decompress_1stream(&ctx->literals_dtable, &lit_stream, &huf_stream);
    } else {
        symbols_decoded = HUF_decompress_4stream(&ctx->literals_dtable, &lit_stream, &huf_stream);
    }

    if (symbols_decoded != regenerated_size) {
        CORRUPTION();
    }

    return regenerated_size;
}

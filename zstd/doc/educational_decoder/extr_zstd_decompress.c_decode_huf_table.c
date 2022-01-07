
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int weights ;
typedef int u8 ;
typedef int ostream_t ;
typedef int istream_t ;
typedef int HUF_dtable ;


 int HUF_MAX_SYMBS ;
 int HUF_init_dtable_usingweights (int * const,int*,int) ;
 int* IO_get_read_ptr (int * const,size_t const) ;
 int IO_make_ostream (int*,int) ;
 int IO_make_sub_istream (int * const,int const) ;
 int IO_read_bits (int * const,int) ;
 int fse_decode_hufweights (int *,int *,int*) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static void decode_huf_table(HUF_dtable *const dtable, istream_t *const in) {




    const u8 header = IO_read_bits(in, 8);

    u8 weights[HUF_MAX_SYMBS];
    memset(weights, 0, sizeof(weights));

    int num_symbs;

    if (header >= 128) {





        num_symbs = header - 127;
        const size_t bytes = (num_symbs + 1) / 2;

        const u8 *const weight_src = IO_get_read_ptr(in, bytes);

        for (int i = 0; i < num_symbs; i++) {





            if (i % 2 == 0) {
                weights[i] = weight_src[i / 2] >> 4;
            } else {
                weights[i] = weight_src[i / 2] & 0xf;
            }
        }
    } else {


        istream_t fse_stream = IO_make_sub_istream(in, header);
        ostream_t weight_stream = IO_make_ostream(weights, HUF_MAX_SYMBS);
        fse_decode_hufweights(&weight_stream, &fse_stream, &num_symbs);
    }


    HUF_init_dtable_usingweights(dtable, weights, num_symbs);
}

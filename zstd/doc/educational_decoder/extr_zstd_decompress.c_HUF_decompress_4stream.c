
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ostream_t ;
typedef int istream_t ;
typedef int HUF_dtable ;


 scalar_t__ HUF_decompress_1stream (int const* const,int * const,int *) ;
 size_t const IO_istream_len (int * const) ;
 int IO_make_sub_istream (int * const,size_t const) ;
 size_t IO_read_bits (int * const,int) ;

__attribute__((used)) static size_t HUF_decompress_4stream(const HUF_dtable *const dtable,
                                     ostream_t *const out, istream_t *const in) {





    const size_t csize1 = IO_read_bits(in, 16);
    const size_t csize2 = IO_read_bits(in, 16);
    const size_t csize3 = IO_read_bits(in, 16);

    istream_t in1 = IO_make_sub_istream(in, csize1);
    istream_t in2 = IO_make_sub_istream(in, csize2);
    istream_t in3 = IO_make_sub_istream(in, csize3);
    istream_t in4 = IO_make_sub_istream(in, IO_istream_len(in));

    size_t total_output = 0;



    total_output += HUF_decompress_1stream(dtable, out, &in1);
    total_output += HUF_decompress_1stream(dtable, out, &in2);
    total_output += HUF_decompress_1stream(dtable, out, &in3);
    total_output += HUF_decompress_1stream(dtable, out, &in4);

    return total_output;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int ostream_t ;
typedef int istream_t ;
typedef int dictionary_t ;


 int ERROR (char*) ;
 int IO_read_bits (int * const,int) ;
 int decode_data_frame (int * const,int * const,int const* const) ;

__attribute__((used)) static void decode_frame(ostream_t *const out, istream_t *const in,
                         const dictionary_t *const dict) {
    const u32 magic_number = (u32)IO_read_bits(in, 32);





    if (magic_number == 0xFD2FB528U) {

        decode_data_frame(out, in, dict);

        return;
    }


    ERROR("Tried to decode non-ZSTD frame");
}

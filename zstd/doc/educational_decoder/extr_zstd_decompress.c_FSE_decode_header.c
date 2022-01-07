
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int istream_t ;
typedef scalar_t__ i32 ;
typedef scalar_t__ i16 ;
typedef int FSE_dtable ;


 int CORRUPTION () ;
 int ERROR (char*) ;
 int const FSE_MAX_ACCURACY_LOG ;
 int FSE_MAX_SYMBS ;
 int FSE_init_dtable (int * const,scalar_t__*,int,int const) ;
 int IO_align_stream (int * const) ;
 int IO_read_bits (int * const,int) ;
 int IO_rewind_bits (int * const,int) ;
 int highest_set_bit (scalar_t__) ;

__attribute__((used)) static void FSE_decode_header(FSE_dtable *const dtable, istream_t *const in,
                                const int max_accuracy_log) {







    if (max_accuracy_log > FSE_MAX_ACCURACY_LOG) {
        ERROR("FSE accuracy too large");
    }





    const int accuracy_log = 5 + IO_read_bits(in, 4);
    if (accuracy_log > max_accuracy_log) {
        ERROR("FSE accuracy too large");
    }
    i32 remaining = 1 << accuracy_log;
    i16 frequencies[FSE_MAX_SYMBS];

    int symb = 0;
    while (remaining > 0 && symb < FSE_MAX_SYMBS) {

        int bits = highest_set_bit(remaining + 1) + 1;

        u16 val = IO_read_bits(in, bits);



        const u16 lower_mask = ((u16)1 << (bits - 1)) - 1;
        const u16 threshold = ((u16)1 << bits) - 1 - (remaining + 1);

        if ((val & lower_mask) < threshold) {
            IO_rewind_bits(in, 1);
            val = val & lower_mask;
        } else if (val > lower_mask) {
            val = val - threshold;
        }



        const i16 proba = (i16)val - 1;





        remaining -= proba < 0 ? -proba : proba;

        frequencies[symb] = proba;
        symb++;





        if (proba == 0) {

            int repeat = IO_read_bits(in, 2);

            while (1) {
                for (int i = 0; i < repeat && symb < FSE_MAX_SYMBS; i++) {
                    frequencies[symb++] = 0;
                }
                if (repeat == 3) {
                    repeat = IO_read_bits(in, 2);
                } else {
                    break;
                }
            }
        }
    }
    IO_align_stream(in);




    if (remaining != 0 || symb >= FSE_MAX_SYMBS) {
        CORRUPTION();
    }


    FSE_init_dtable(dtable, frequencies, symb, accuracy_log);
}

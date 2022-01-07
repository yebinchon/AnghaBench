
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u16 ;
typedef int i16 ;
struct TYPE_3__ {int accuracy_log; int* symbols; size_t* num_bits; size_t* new_state_base; } ;
typedef TYPE_1__ FSE_dtable ;


 int BAD_ALLOC () ;
 int CORRUPTION () ;
 int ERROR (char*) ;
 int const FSE_MAX_ACCURACY_LOG ;
 int const FSE_MAX_SYMBS ;
 int const highest_set_bit (size_t) ;
 void* malloc (size_t const) ;

__attribute__((used)) static void FSE_init_dtable(FSE_dtable *const dtable,
                            const i16 *const norm_freqs, const int num_symbs,
                            const int accuracy_log) {
    if (accuracy_log > FSE_MAX_ACCURACY_LOG) {
        ERROR("FSE accuracy too large");
    }
    if (num_symbs > FSE_MAX_SYMBS) {
        ERROR("Too many symbols for FSE");
    }

    dtable->accuracy_log = accuracy_log;

    const size_t size = (size_t)1 << accuracy_log;
    dtable->symbols = malloc(size * sizeof(u8));
    dtable->num_bits = malloc(size * sizeof(u8));
    dtable->new_state_base = malloc(size * sizeof(u16));

    if (!dtable->symbols || !dtable->num_bits || !dtable->new_state_base) {
        BAD_ALLOC();
    }





    u16 state_desc[FSE_MAX_SYMBS];





    int high_threshold = size;
    for (int s = 0; s < num_symbs; s++) {

        if (norm_freqs[s] == -1) {
            dtable->symbols[--high_threshold] = s;
            state_desc[s] = 1;
        }
    }





    const u16 step = (size >> 1) + (size >> 3) + 3;
    const u16 mask = size - 1;
    u16 pos = 0;
    for (int s = 0; s < num_symbs; s++) {
        if (norm_freqs[s] <= 0) {
            continue;
        }

        state_desc[s] = norm_freqs[s];

        for (int i = 0; i < norm_freqs[s]; i++) {

            dtable->symbols[pos] = s;


            do {
                pos = (pos + step) & mask;
            } while (pos >=
                     high_threshold);



        }
    }
    if (pos != 0) {
        CORRUPTION();
    }


    for (size_t i = 0; i < size; i++) {
        u8 symbol = dtable->symbols[i];
        u16 next_state_desc = state_desc[symbol]++;


        dtable->num_bits[i] = (u8)(accuracy_log - highest_set_bit(next_state_desc));


        dtable->new_state_base[i] =
            ((u16)next_state_desc << dtable->num_bits[i]) - size;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int byte ;
struct TYPE_7__ {int next_word; int next_word_bytes; int offset; int C; int CT; TYPE_1__* ws; } ;
struct TYPE_6__ {int (* get_next_word ) (TYPE_1__*,int,int*) ;} ;
typedef TYPE_1__ Jbig2WordStream ;
typedef TYPE_2__ Jbig2ArithState ;


 int fprintf (int ,char*,int) ;
 int stderr ;
 int stub1 (TYPE_1__*,int,int*) ;
 int stub2 (TYPE_1__*,int,int*) ;

__attribute__((used)) static void
jbig2_arith_bytein(Jbig2ArithState *as)
{
    int new_bytes;
    byte B;




    B = (byte)((as->next_word >> 24) & 0xFF);
    if (B == 0xFF) {
        byte B1;

        if (as->next_word_bytes == 1) {
            Jbig2WordStream *ws = as->ws;

            new_bytes = ws->get_next_word(ws, as->offset, &as->next_word);
            as->next_word_bytes = new_bytes;
            as->offset += new_bytes;

            B1 = (byte)((as->next_word >> 24) & 0xFF);
            if (B1 > 0x8F) {




                as->C += 0xFF00;

                as->CT = 8;
                as->next_word = 0xFF000000 | (as->next_word >> 8);
                as->next_word_bytes = 4;
                as->offset--;
            } else {






                as->C += B1 << 9;

                as->CT = 7;
            }
        } else {
            B1 = (byte)((as->next_word >> 16) & 0xFF);
            if (B1 > 0x8F) {




                as->C += 0xFF00;

                as->CT = 8;
            } else {
                as->next_word_bytes--;
                as->next_word <<= 8;







                as->C += (B1 << 9);

                as->CT = 7;
            }
        }
    } else {



        as->CT = 8;
        as->next_word <<= 8;
        as->next_word_bytes--;
        if (as->next_word_bytes == 0) {
            Jbig2WordStream *ws = as->ws;

            new_bytes = ws->get_next_word(ws, as->offset, &as->next_word);
            as->offset += new_bytes;
            as->next_word_bytes = new_bytes;
        }
        B = (byte)((as->next_word >> 24) & 0xFF);



        as->C += (B << 8);

    }
}

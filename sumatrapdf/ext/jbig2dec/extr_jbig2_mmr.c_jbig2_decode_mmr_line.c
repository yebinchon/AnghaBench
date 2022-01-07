
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int byte ;
struct TYPE_5__ {int word; int width; } ;
typedef TYPE_1__ Jbig2MmrCtx ;
typedef int Jbig2Ctx ;


 int JBIG2_SEVERITY_WARNING ;
 int MINUS1 ;
 int jbig2_decode_get_run (int *,TYPE_1__*,int ,int) ;
 int jbig2_decode_mmr_consume (TYPE_1__*,int) ;
 int jbig2_error (int *,int ,int,char*) ;
 int jbig2_find_changing_element (int const*,int,int) ;
 int jbig2_find_changing_element_of_color (int const*,int,int,int) ;
 int jbig2_mmr_black_decode ;
 int jbig2_mmr_white_decode ;
 int jbig2_set_bits (int *,int,int) ;

__attribute__((used)) static int
jbig2_decode_mmr_line(Jbig2Ctx *ctx, Jbig2MmrCtx *mmr, const byte *ref, byte *dst, int *eofb)
{
    uint32_t a0 = MINUS1;
    uint32_t a1, a2, b1, b2;
    int c = 0;

    while (1) {
        uint32_t word = mmr->word;



        if (a0 != MINUS1 && a0 >= mmr->width)
            break;

        if ((word >> (32 - 3)) == 1) {
            int white_run, black_run;

            jbig2_decode_mmr_consume(mmr, 3);

            if (a0 == MINUS1)
                a0 = 0;

            if (c == 0) {
                white_run = jbig2_decode_get_run(ctx, mmr, jbig2_mmr_white_decode, 8);
                if (white_run < 0)
                    return jbig2_error(ctx, JBIG2_SEVERITY_WARNING, -1, "failed to decode white H run");
                black_run = jbig2_decode_get_run(ctx, mmr, jbig2_mmr_black_decode, 7);
                if (black_run < 0)
                    return jbig2_error(ctx, JBIG2_SEVERITY_WARNING, -1, "failed to decode black H run");

                a1 = a0 + white_run;
                a2 = a1 + black_run;
                if (a1 > mmr->width)
                    a1 = mmr->width;
                if (a2 > mmr->width)
                    a2 = mmr->width;
                if (a2 < a1) {
                    jbig2_error(ctx, JBIG2_SEVERITY_WARNING, -1, "ignoring negative black H run");
                    a2 = a1;
                }
                if (a1 < mmr->width)
                    jbig2_set_bits(dst, a1, a2);
                a0 = a2;
            } else {
                black_run = jbig2_decode_get_run(ctx, mmr, jbig2_mmr_black_decode, 7);
                if (black_run < 0)
                    return jbig2_error(ctx, JBIG2_SEVERITY_WARNING, -1, "failed to decode black H run");
                white_run = jbig2_decode_get_run(ctx, mmr, jbig2_mmr_white_decode, 8);
                if (white_run < 0)
                    return jbig2_error(ctx, JBIG2_SEVERITY_WARNING, -1, "failed to decode white H run");

                a1 = a0 + black_run;
                a2 = a1 + white_run;
                if (a1 > mmr->width)
                    a1 = mmr->width;
                if (a2 > mmr->width)
                    a2 = mmr->width;
                if (a1 < a0) {
                    jbig2_error(ctx, JBIG2_SEVERITY_WARNING, -1, "ignoring negative white H run");
                    a1 = a0;
                }
                if (a0 < mmr->width)
                    jbig2_set_bits(dst, a0, a1);
                a0 = a2;
            }
        }

        else if ((word >> (32 - 4)) == 1) {

            jbig2_decode_mmr_consume(mmr, 4);
            b1 = jbig2_find_changing_element_of_color(ref, a0, mmr->width, !c);
            b2 = jbig2_find_changing_element(ref, b1, mmr->width);
            if (c) {
                if (b2 < a0) {
                    jbig2_error(ctx, JBIG2_SEVERITY_WARNING, -1, "ignoring negative P run");
                    b2 = a0;
                }
                if (a0 < mmr->width)
                    jbig2_set_bits(dst, a0, b2);
            }
            a0 = b2;
        }

        else if ((word >> (32 - 1)) == 1) {

            jbig2_decode_mmr_consume(mmr, 1);
            b1 = jbig2_find_changing_element_of_color(ref, a0, mmr->width, !c);
            if (c) {
                if (b1 < a0) {
                    jbig2_error(ctx, JBIG2_SEVERITY_WARNING, -1, "ignoring negative V(0) run");
                    b1 = a0;
                }
                if (a0 < mmr->width)
                    jbig2_set_bits(dst, a0, b1);
            }
            a0 = b1;
            c = !c;
        }

        else if ((word >> (32 - 3)) == 3) {

            jbig2_decode_mmr_consume(mmr, 3);
            b1 = jbig2_find_changing_element_of_color(ref, a0, mmr->width, !c);
            if (b1 + 1 <= mmr->width)
                b1 += 1;
            if (c) {
                if (b1 < a0) {
                    jbig2_error(ctx, JBIG2_SEVERITY_WARNING, -1, "ignoring negative VR(1) run");
                    b1 = a0;
                }
                if (a0 < mmr->width)
                    jbig2_set_bits(dst, a0, b1);
            }
            a0 = b1;
            c = !c;
        }

        else if ((word >> (32 - 6)) == 3) {

            jbig2_decode_mmr_consume(mmr, 6);
            b1 = jbig2_find_changing_element_of_color(ref, a0, mmr->width, !c);
            if (b1 + 2 <= mmr->width)
                b1 += 2;
            if (c) {
                if (b1 < a0) {
                    jbig2_error(ctx, JBIG2_SEVERITY_WARNING, -1, "ignoring negative VR(2) run");
                    b1 = a0;
                }
                if (a0 < mmr->width)
                    jbig2_set_bits(dst, a0, b1);
            }
            a0 = b1;
            c = !c;
        }

        else if ((word >> (32 - 7)) == 3) {

            jbig2_decode_mmr_consume(mmr, 7);
            b1 = jbig2_find_changing_element_of_color(ref, a0, mmr->width, !c);
            if (b1 + 3 <= mmr->width)
                b1 += 3;
            if (c) {
                if (b1 < a0) {
                    jbig2_error(ctx, JBIG2_SEVERITY_WARNING, -1, "ignoring negative VR(3) run");
                    b1 = a0;
                }
                if (a0 < mmr->width)
                    jbig2_set_bits(dst, a0, b1);
            }
            a0 = b1;
            c = !c;
        }

        else if ((word >> (32 - 3)) == 2) {

            jbig2_decode_mmr_consume(mmr, 3);
            b1 = jbig2_find_changing_element_of_color(ref, a0, mmr->width, !c);
            if (b1 >= 1)
                b1 -= 1;
            if (c) {
                if (b1 < a0) {
                    jbig2_error(ctx, JBIG2_SEVERITY_WARNING, -1, "ignoring negative VL(1) run");
                    b1 = a0;
                }
                if (a0 < mmr->width)
                    jbig2_set_bits(dst, a0, b1);
            }
            a0 = b1;
            c = !c;
        }

        else if ((word >> (32 - 6)) == 2) {

            jbig2_decode_mmr_consume(mmr, 6);
            b1 = jbig2_find_changing_element_of_color(ref, a0, mmr->width, !c);
            if (b1 >= 2)
                b1 -= 2;
            if (c) {
                if (b1 < a0) {
                    jbig2_error(ctx, JBIG2_SEVERITY_WARNING, -1, "ignoring negative VL(2) run");
                    b1 = a0;
                }
                if (a0 < mmr->width)
                    jbig2_set_bits(dst, a0, b1);
            }
            a0 = b1;
            c = !c;
        }

        else if ((word >> (32 - 7)) == 2) {

            jbig2_decode_mmr_consume(mmr, 7);
            b1 = jbig2_find_changing_element_of_color(ref, a0, mmr->width, !c);
            if (b1 >= 3)
                b1 -= 3;
            if (c) {
                if (b1 < a0) {
                    jbig2_error(ctx, JBIG2_SEVERITY_WARNING, -1, "ignoring negative VL(3) run");
                    b1 = a0;
                }
                if (a0 < mmr->width)
                    jbig2_set_bits(dst, a0, b1);
            }
            a0 = b1;
            c = !c;
        }

        else if ((word >> (32 - 24)) == 0x1001) {

            jbig2_decode_mmr_consume(mmr, 24);
            *eofb = 1;
            break;
        }

        else
            break;
    }

    return 0;
}

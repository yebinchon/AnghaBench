
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int super; } ;
struct ar_archive_rar_uncomp_v3 {TYPE_1__ range_dec; int ppmd7_context; } ;
typedef scalar_t__ Byte ;


 int Ppmd7_DecodeSymbol (int *,int *) ;
 int warn (char*) ;

__attribute__((used)) static inline bool rar_decode_ppmd7_symbol(struct ar_archive_rar_uncomp_v3 *uncomp_v3, Byte *symbol)
{
    int value = Ppmd7_DecodeSymbol(&uncomp_v3->ppmd7_context, &uncomp_v3->range_dec.super);
    if (value < 0) {
        warn("Invalid data in bitstream");
        return 0;
    }
    *symbol = (Byte)value;
    return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ar_archive_rar_uncomp_v3 {scalar_t__ ppmd_escape; } ;
typedef int int64_t ;
struct TYPE_7__ {struct ar_archive_rar_uncomp_v3 v3; } ;
struct TYPE_8__ {int start_new_table; int lzss; TYPE_1__ state; } ;
struct TYPE_9__ {TYPE_2__ uncomp; } ;
typedef TYPE_3__ ar_archive_rar ;
typedef int LZSS ;
typedef scalar_t__ Byte ;


 int lzss_emit_literal (int *,scalar_t__) ;
 int lzss_emit_match (int *,int,int ) ;
 int rar_decode_ppmd7_byte ;
 int rar_decode_ppmd7_symbol (struct ar_archive_rar_uncomp_v3*,scalar_t__*) ;
 int rar_parse_codes (TYPE_3__*) ;
 int rar_read_filter (TYPE_3__*,int ,int *) ;

__attribute__((used)) static bool rar_handle_ppmd_sequence(ar_archive_rar *rar, int64_t *end)
{
    struct ar_archive_rar_uncomp_v3 *uncomp_v3 = &rar->uncomp.state.v3;
    LZSS *lzss = &rar->uncomp.lzss;
    Byte sym, code, length;
    int lzss_offset;

    if (!rar_decode_ppmd7_symbol(uncomp_v3, &sym))
        return 0;
    if (sym != uncomp_v3->ppmd_escape) {
        lzss_emit_literal(lzss, sym);
        return 1;
    }

    if (!rar_decode_ppmd7_symbol(uncomp_v3, &code))
        return 0;
    switch (code) {
    case 0:
        return rar_parse_codes(rar);

    case 2:
        rar->uncomp.start_new_table = 1;
        return 1;

    case 3:
        return rar_read_filter(rar, rar_decode_ppmd7_byte, end);

    case 4:
        if (!rar_decode_ppmd7_symbol(uncomp_v3, &code))
            return 0;
        lzss_offset = code << 16;
        if (!rar_decode_ppmd7_symbol(uncomp_v3, &code))
            return 0;
        lzss_offset |= code << 8;
        if (!rar_decode_ppmd7_symbol(uncomp_v3, &code))
            return 0;
        lzss_offset |= code;
        if (!rar_decode_ppmd7_symbol(uncomp_v3, &length))
            return 0;
        lzss_emit_match(lzss, lzss_offset + 2, length + 32);
        return 1;

    case 5:
        if (!rar_decode_ppmd7_symbol(uncomp_v3, &length))
            return 0;
        lzss_emit_match(lzss, 1, length + 4);
        return 1;

    default:
        lzss_emit_literal(lzss, sym);
        return 1;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef size_t int64_t ;
struct TYPE_10__ {size_t filterstart; } ;
struct TYPE_11__ {TYPE_1__ filters; } ;
struct TYPE_12__ {TYPE_2__ v3; } ;
struct TYPE_13__ {TYPE_3__ state; } ;
struct TYPE_14__ {TYPE_4__ uncomp; } ;
typedef TYPE_5__ ar_archive_rar ;


 int free (int*) ;
 int* malloc (int) ;
 int rar_parse_filter (TYPE_5__*,int*,int,int) ;
 int warn (char*) ;

__attribute__((used)) static bool rar_read_filter(ar_archive_rar *rar, bool (* decode_byte)(ar_archive_rar *rar, uint8_t *byte), int64_t *end)
{
    uint8_t flags, val, *code;
    uint16_t length, i;

    if (!decode_byte(rar, &flags))
        return 0;
    length = (flags & 0x07) + 1;
    if (length == 7) {
        if (!decode_byte(rar, &val))
            return 0;
        length = val + 7;
    }
    else if (length == 8) {
        if (!decode_byte(rar, &val))
            return 0;
        length = val << 8;
        if (!decode_byte(rar, &val))
            return 0;
        length |= val;
    }

    code = malloc(length);
    if (!code) {
        warn("OOM during decompression");
        return 0;
    }
    for (i = 0; i < length; i++) {
        if (!decode_byte(rar, &code[i])) {
            free(code);
            return 0;
        }
    }
    if (!rar_parse_filter(rar, code, length, flags)) {
        free(code);
        return 0;
    }
    free(code);

    if (rar->uncomp.state.v3.filters.filterstart < (size_t)*end)
        *end = rar->uncomp.state.v3.filters.filterstart;

    return 1;
}

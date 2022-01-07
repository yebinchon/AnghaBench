
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int available; int at_eof; int bits; } ;
struct TYPE_10__ {TYPE_3__ br; } ;
struct TYPE_8__ {size_t data_left; } ;
struct TYPE_7__ {int stream; } ;
struct TYPE_11__ {TYPE_4__ uncomp; TYPE_2__ progress; TYPE_1__ super; } ;
typedef TYPE_5__ ar_archive_rar ;


 size_t ar_read (int ,int*,int) ;
 int warn (char*) ;

__attribute__((used)) static bool br_fill(ar_archive_rar *rar, int bits)
{
    uint8_t bytes[8];
    int count, i;

    count = (64 - rar->uncomp.br.available) / 8;
    if (rar->progress.data_left < (size_t)count)
        count = (int)rar->progress.data_left;

    if (bits > rar->uncomp.br.available + 8 * count || ar_read(rar->super.stream, bytes, count) != (size_t)count) {
        if (!rar->uncomp.br.at_eof) {
            warn("Unexpected EOF during decompression (truncated file?)");
            rar->uncomp.br.at_eof = 1;
        }
        return 0;
    }
    rar->progress.data_left -= count;
    for (i = 0; i < count; i++) {
        rar->uncomp.br.bits = (rar->uncomp.br.bits << 8) | bytes[i];
    }
    rar->uncomp.br.available += 8 * count;
    return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int filterstart; } ;
struct TYPE_5__ {int ppmd_escape; TYPE_1__ filters; } ;
struct TYPE_6__ {TYPE_2__ v3; } ;
struct ar_archive_rar_uncomp {int version; int start_new_table; TYPE_3__ state; int lzss; } ;


 int LZSS_WINDOW_SIZE ;
 int SIZE_MAX ;
 int lzss_initialize (int *,int ) ;
 int memset (struct ar_archive_rar_uncomp*,int ,int) ;
 int warn (char*,...) ;

__attribute__((used)) static bool rar_init_uncompress(struct ar_archive_rar_uncomp *uncomp, uint8_t version)
{

    if (version == 29 || version == 36)
        version = 3;
    else if (version == 20 || version == 26)
        version = 2;
    else {
        warn("Unsupported compression version: %d", version);
        return 0;
    }
    if (uncomp->version) {
        if (uncomp->version != version) {
            warn("Compression version mismatch: %d != %d", version, uncomp->version);
            return 0;
        }
        return 1;
    }
    memset(uncomp, 0, sizeof(*uncomp));
    uncomp->start_new_table = 1;
    if (!lzss_initialize(&uncomp->lzss, LZSS_WINDOW_SIZE)) {
        warn("OOM during decompression");
        return 0;
    }
    if (version == 3) {
        uncomp->state.v3.ppmd_escape = 2;
        uncomp->state.v3.filters.filterstart = SIZE_MAX;
    }
    uncomp->version = version;
    return 1;
}

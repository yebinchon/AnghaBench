
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ar_archive_zip_uncomp {int initialized; int * clear_state; int * uncompress_data; } ;
struct TYPE_5__ {scalar_t__ method; int flags; } ;
struct TYPE_6__ {TYPE_1__ entry; struct ar_archive_zip_uncomp uncomp; } ;
typedef TYPE_2__ ar_archive_zip ;


 scalar_t__ METHOD_BZIP2 ;
 scalar_t__ METHOD_DEFLATE ;
 scalar_t__ METHOD_DEFLATE64 ;
 scalar_t__ METHOD_LZMA ;
 scalar_t__ METHOD_PPMD ;
 int memset (struct ar_archive_zip_uncomp*,int ,int) ;
 int warn (char*,...) ;
 int * zip_clear_uncompress_bzip2 ;
 int * zip_clear_uncompress_deflate ;
 void* zip_clear_uncompress_deflate64 ;
 int * zip_clear_uncompress_lzma ;
 int * zip_clear_uncompress_ppmd ;
 scalar_t__ zip_init_uncompress_bzip2 (struct ar_archive_zip_uncomp*) ;
 scalar_t__ zip_init_uncompress_deflate (struct ar_archive_zip_uncomp*) ;
 scalar_t__ zip_init_uncompress_deflate64 (struct ar_archive_zip_uncomp*,int) ;
 scalar_t__ zip_init_uncompress_lzma (struct ar_archive_zip_uncomp*,int ) ;
 scalar_t__ zip_init_uncompress_ppmd (TYPE_2__*) ;
 int * zip_uncompress_data_bzip2 ;
 int * zip_uncompress_data_deflate ;
 void* zip_uncompress_data_deflate64 ;
 int * zip_uncompress_data_lzma ;
 int * zip_uncompress_data_ppmd ;

__attribute__((used)) static bool zip_init_uncompress(ar_archive_zip *zip)
{
    struct ar_archive_zip_uncomp *uncomp = &zip->uncomp;
    if (uncomp->initialized)
        return 1;
    memset(uncomp, 0, sizeof(*uncomp));
    if (zip->entry.method == METHOD_DEFLATE) {






        if (zip_init_uncompress_deflate64(uncomp, 0)) {
            uncomp->uncompress_data = zip_uncompress_data_deflate64;
            uncomp->clear_state = zip_clear_uncompress_deflate64;
        }

    }
    else if (zip->entry.method == METHOD_DEFLATE64) {
        if (zip_init_uncompress_deflate64(uncomp, 1)) {
            uncomp->uncompress_data = zip_uncompress_data_deflate64;
            uncomp->clear_state = zip_clear_uncompress_deflate64;
        }
    }
    else if (zip->entry.method == METHOD_BZIP2) {






        warn("BZIP2 support requires BZIP2 (define HAVE_BZIP2)");

    }
    else if (zip->entry.method == METHOD_LZMA) {
        if (zip_init_uncompress_lzma(uncomp, zip->entry.flags)) {
            uncomp->uncompress_data = zip_uncompress_data_lzma;
            uncomp->clear_state = zip_clear_uncompress_lzma;
        }
    }
    else if (zip->entry.method == METHOD_PPMD) {
        if (zip_init_uncompress_ppmd(zip)) {
            uncomp->uncompress_data = zip_uncompress_data_ppmd;
            uncomp->clear_state = zip_clear_uncompress_ppmd;
        }
    }
    else
        warn("Unsupported compression method %d", zip->entry.method);
    uncomp->initialized = uncomp->uncompress_data != ((void*)0) && uncomp->clear_state != ((void*)0);
    return uncomp->initialized;
}

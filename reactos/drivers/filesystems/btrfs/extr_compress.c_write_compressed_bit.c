
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
struct TYPE_12__ {scalar_t__ prop_compression; TYPE_3__* Vcb; } ;
typedef TYPE_4__ fcb ;
struct TYPE_10__ {int incompat_flags; } ;
struct TYPE_9__ {scalar_t__ compress_type; } ;
struct TYPE_11__ {TYPE_2__ superblock; TYPE_1__ options; } ;
typedef int PIRP ;
typedef int NTSTATUS ;
typedef int LIST_ENTRY ;


 scalar_t__ BTRFS_COMPRESSION_LZO ;
 scalar_t__ BTRFS_COMPRESSION_ZLIB ;
 scalar_t__ BTRFS_COMPRESSION_ZSTD ;
 int BTRFS_INCOMPAT_FLAGS_COMPRESS_LZO ;
 int BTRFS_INCOMPAT_FLAGS_COMPRESS_ZSTD ;
 scalar_t__ PropCompression_LZO ;
 scalar_t__ PropCompression_None ;
 scalar_t__ PropCompression_ZSTD ;
 scalar_t__ PropCompression_Zlib ;
 int lzo_write_compressed_bit (TYPE_4__*,int ,int ,void*,int*,int ,int *) ;
 int zlib_write_compressed_bit (TYPE_4__*,int ,int ,void*,int*,int ,int *) ;
 int zstd_write_compressed_bit (TYPE_4__*,int ,int ,void*,int*,int ,int *) ;

NTSTATUS write_compressed_bit(fcb* fcb, uint64_t start_data, uint64_t end_data, void* data, bool* compressed, PIRP Irp, LIST_ENTRY* rollback) {
    uint8_t type;

    if (fcb->Vcb->options.compress_type != 0 && fcb->prop_compression == PropCompression_None)
        type = fcb->Vcb->options.compress_type;
    else {
        if (!(fcb->Vcb->superblock.incompat_flags & BTRFS_INCOMPAT_FLAGS_COMPRESS_ZSTD) && fcb->prop_compression == PropCompression_ZSTD)
            type = BTRFS_COMPRESSION_ZSTD;
        else if (fcb->Vcb->superblock.incompat_flags & BTRFS_INCOMPAT_FLAGS_COMPRESS_ZSTD && fcb->prop_compression != PropCompression_Zlib && fcb->prop_compression != PropCompression_LZO)
            type = BTRFS_COMPRESSION_ZSTD;
        else if (!(fcb->Vcb->superblock.incompat_flags & BTRFS_INCOMPAT_FLAGS_COMPRESS_LZO) && fcb->prop_compression == PropCompression_LZO)
            type = BTRFS_COMPRESSION_LZO;
        else if (fcb->Vcb->superblock.incompat_flags & BTRFS_INCOMPAT_FLAGS_COMPRESS_LZO && fcb->prop_compression != PropCompression_Zlib)
            type = BTRFS_COMPRESSION_LZO;
        else
            type = BTRFS_COMPRESSION_ZLIB;
    }

    if (type == BTRFS_COMPRESSION_ZSTD) {
        fcb->Vcb->superblock.incompat_flags |= BTRFS_INCOMPAT_FLAGS_COMPRESS_ZSTD;
        return zstd_write_compressed_bit(fcb, start_data, end_data, data, compressed, Irp, rollback);
    } else if (type == BTRFS_COMPRESSION_LZO) {
        fcb->Vcb->superblock.incompat_flags |= BTRFS_INCOMPAT_FLAGS_COMPRESS_LZO;
        return lzo_write_compressed_bit(fcb, start_data, end_data, data, compressed, Irp, rollback);
    } else
        return zlib_write_compressed_bit(fcb, start_data, end_data, data, compressed, Irp, rollback);
}

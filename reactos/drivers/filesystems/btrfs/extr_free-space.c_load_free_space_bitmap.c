
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_6__ {int sector_size; } ;
struct TYPE_7__ {TYPE_1__ superblock; } ;
typedef TYPE_2__ device_extension ;
struct TYPE_8__ {int space_size; int space; } ;
typedef TYPE_3__ chunk ;
typedef int ULONG ;
typedef int RTL_BITMAP ;


 int RtlFindFirstRunClear (int *,int*) ;
 int RtlFindNextForwardRunClear (int *,int,int*) ;
 int RtlInitializeBitMap (int *,void*,int) ;
 int add_space_entry (int *,int *,int,int) ;

__attribute__((used)) static void load_free_space_bitmap(device_extension* Vcb, chunk* c, uint64_t offset, void* data, uint64_t* total_space) {
    RTL_BITMAP bmph;
    uint32_t i, len, *dwords = data;
    ULONG runlength, index;


    for (i = 0; i < Vcb->superblock.sector_size / sizeof(uint32_t); i++) {
        dwords[i] = ~dwords[i];
    }

    len = Vcb->superblock.sector_size * 8;

    RtlInitializeBitMap(&bmph, data, len);

    index = 0;
    runlength = RtlFindFirstRunClear(&bmph, &index);

    while (runlength != 0) {
        uint64_t addr, length;

        if (index >= len)
            break;

        if (index + runlength >= len) {
            runlength = len - index;

            if (runlength == 0)
                break;
        }

        addr = offset + (index * Vcb->superblock.sector_size);
        length = Vcb->superblock.sector_size * runlength;

        add_space_entry(&c->space, &c->space_size, addr, length);
        index += runlength;
        *total_space += length;

        runlength = RtlFindNextForwardRunClear(&bmph, index, &index);
    }
}

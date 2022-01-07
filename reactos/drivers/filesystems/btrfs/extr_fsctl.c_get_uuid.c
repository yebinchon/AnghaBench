
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ULONG ;
struct TYPE_6__ {int* uuid; } ;
struct TYPE_5__ {int LowPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef TYPE_2__ BTRFS_UUID ;


 TYPE_1__ KeQueryPerformanceCounter (int *) ;
 int RtlRandomEx (int *) ;

__attribute__((used)) static void get_uuid(BTRFS_UUID* uuid) {
    LARGE_INTEGER seed;
    uint8_t i;

    seed = KeQueryPerformanceCounter(((void*)0));

    for (i = 0; i < 16; i+=2) {
        ULONG rand = RtlRandomEx(&seed.LowPart);

        uuid->uuid[i] = (rand & 0xff00) >> 8;
        uuid->uuid[i+1] = rand & 0xff;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {int count; } ;
struct TYPE_5__ {int count; } ;
struct TYPE_4__ {int count; } ;
typedef TYPE_1__ SHARED_DATA_REF ;
typedef TYPE_2__ EXTENT_REF_V0 ;
typedef TYPE_3__ EXTENT_DATA_REF ;
__attribute__((used)) __inline static uint32_t get_extent_data_refcount(uint8_t type, void* data) {
    switch (type) {
        case 128:
            return 1;

        case 132:
        {
            EXTENT_DATA_REF* edr = (EXTENT_DATA_REF*)data;
            return edr->count;
        }

        case 131:
        {
            EXTENT_REF_V0* erv0 = (EXTENT_REF_V0*)data;
            return erv0->count;
        }

        case 130:
            return 1;

        case 129:
        {
            SHARED_DATA_REF* sdr = (SHARED_DATA_REF*)data;
            return sdr->count;
        }

        default:
            return 0;
    }
}

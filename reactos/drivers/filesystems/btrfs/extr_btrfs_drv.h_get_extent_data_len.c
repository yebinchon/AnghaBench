
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int TREE_BLOCK_REF ;
typedef int SHARED_DATA_REF ;
typedef int SHARED_BLOCK_REF ;
typedef int EXTENT_REF_V0 ;
typedef int EXTENT_DATA_REF ;
__attribute__((used)) __inline static uint16_t get_extent_data_len(uint8_t type) {
    switch (type) {
        case 128:
            return sizeof(TREE_BLOCK_REF);

        case 132:
            return sizeof(EXTENT_DATA_REF);

        case 131:
            return sizeof(EXTENT_REF_V0);

        case 130:
            return sizeof(SHARED_BLOCK_REF);

        case 129:
            return sizeof(SHARED_DATA_REF);

        default:
            return 0;
    }
}

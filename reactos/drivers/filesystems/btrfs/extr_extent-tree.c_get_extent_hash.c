
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
struct TYPE_6__ {int offset; } ;
struct TYPE_5__ {int offset; } ;
struct TYPE_4__ {int offset; } ;
typedef TYPE_1__ TREE_BLOCK_REF ;
typedef TYPE_2__ SHARED_DATA_REF ;
typedef TYPE_3__ SHARED_BLOCK_REF ;
typedef int EXTENT_DATA_REF ;


 int ERR (char*,scalar_t__) ;
 scalar_t__ TYPE_EXTENT_DATA_REF ;
 scalar_t__ TYPE_SHARED_BLOCK_REF ;
 scalar_t__ TYPE_SHARED_DATA_REF ;
 scalar_t__ TYPE_TREE_BLOCK_REF ;
 int get_extent_data_ref_hash (int *) ;

__attribute__((used)) static uint64_t get_extent_hash(uint8_t type, void* data) {
    if (type == TYPE_EXTENT_DATA_REF) {
        return get_extent_data_ref_hash((EXTENT_DATA_REF*)data);
    } else if (type == TYPE_SHARED_BLOCK_REF) {
        SHARED_BLOCK_REF* sbr = (SHARED_BLOCK_REF*)data;
        return sbr->offset;
    } else if (type == TYPE_SHARED_DATA_REF) {
        SHARED_DATA_REF* sdr = (SHARED_DATA_REF*)data;
        return sdr->offset;
    } else if (type == TYPE_TREE_BLOCK_REF) {
        TREE_BLOCK_REF* tbr = (TREE_BLOCK_REF*)data;
        return tbr->offset;
    } else {
        ERR("unhandled extent type %x\n", type);
        return 0;
    }
}

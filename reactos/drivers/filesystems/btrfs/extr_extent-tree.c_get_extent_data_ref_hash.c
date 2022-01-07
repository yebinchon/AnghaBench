
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int offset; int objid; int root; } ;
typedef TYPE_1__ EXTENT_DATA_REF ;


 int get_extent_data_ref_hash2 (int ,int ,int ) ;

__attribute__((used)) static __inline uint64_t get_extent_data_ref_hash(EXTENT_DATA_REF* edr) {
    return get_extent_data_ref_hash2(edr->root, edr->objid, edr->offset);
}

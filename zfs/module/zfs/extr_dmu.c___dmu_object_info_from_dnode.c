
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int dn_datablksz; int dn_indblkshift; int dn_num_slots; int dn_maxblkid; int dn_nblkptr; int dn_compress; int dn_checksum; int dn_nlevels; int dn_bonuslen; int dn_bonustype; int dn_type; TYPE_2__* dn_phys; } ;
typedef TYPE_1__ dnode_t ;
struct TYPE_8__ {int dn_nblkptr; int * dn_blkptr; } ;
typedef TYPE_2__ dnode_phys_t ;
struct TYPE_9__ {int doi_data_block_size; unsigned long long doi_metadata_block_size; int doi_dnodesize; int doi_physical_blocks_512; int doi_max_offset; scalar_t__ doi_fill_count; int doi_nblkptr; int doi_compress; int doi_checksum; int doi_indirection; int doi_bonus_size; int doi_bonus_type; int doi_type; } ;
typedef TYPE_3__ dmu_object_info_t ;


 scalar_t__ BP_GET_FILL (int *) ;
 int DNODE_SHIFT ;
 int DN_USED_BYTES (TYPE_2__*) ;

void
__dmu_object_info_from_dnode(dnode_t *dn, dmu_object_info_t *doi)
{
 dnode_phys_t *dnp = dn->dn_phys;

 doi->doi_data_block_size = dn->dn_datablksz;
 doi->doi_metadata_block_size = dn->dn_indblkshift ?
     1ULL << dn->dn_indblkshift : 0;
 doi->doi_type = dn->dn_type;
 doi->doi_bonus_type = dn->dn_bonustype;
 doi->doi_bonus_size = dn->dn_bonuslen;
 doi->doi_dnodesize = dn->dn_num_slots << DNODE_SHIFT;
 doi->doi_indirection = dn->dn_nlevels;
 doi->doi_checksum = dn->dn_checksum;
 doi->doi_compress = dn->dn_compress;
 doi->doi_nblkptr = dn->dn_nblkptr;
 doi->doi_physical_blocks_512 = (DN_USED_BYTES(dnp) + 256) >> 9;
 doi->doi_max_offset = (dn->dn_maxblkid + 1) * dn->dn_datablksz;
 doi->doi_fill_count = 0;
 for (int i = 0; i < dnp->dn_nblkptr; i++)
  doi->doi_fill_count += BP_GET_FILL(&dnp->dn_blkptr[i]);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef int uint64_t ;
typedef int nvlist_t ;


 int DNODES_PER_LEVEL ;
 unsigned long long DN_MAX_INDBLKSHIFT ;
 int MIN (int ,int) ;
 int SPA_DVAS_PER_BP ;
 int ZFS_PROP_COPIES ;
 int ZFS_PROP_VOLBLOCKSIZE ;
 int ZVOL_DEFAULT_BLOCKSIZE ;
 int atoi (char*) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int*) ;
 int volsize_from_vdevs (int *,int,int) ;
 int zfs_prop_to_name (int ) ;

uint64_t
zvol_volsize_to_reservation(zpool_handle_t *zph, uint64_t volsize,
    nvlist_t *props)
{
 uint64_t numdb;
 uint64_t nblocks, volblocksize;
 int ncopies;
 char *strval;

 if (nvlist_lookup_string(props,
     zfs_prop_to_name(ZFS_PROP_COPIES), &strval) == 0)
  ncopies = atoi(strval);
 else
  ncopies = 1;
 if (nvlist_lookup_uint64(props,
     zfs_prop_to_name(ZFS_PROP_VOLBLOCKSIZE),
     &volblocksize) != 0)
  volblocksize = ZVOL_DEFAULT_BLOCKSIZE;

 nblocks = volsize / volblocksize;




 volsize = volsize_from_vdevs(zph, nblocks, volblocksize);


 numdb = 7;

 while (nblocks > 1) {
  nblocks += DNODES_PER_LEVEL - 1;
  nblocks /= DNODES_PER_LEVEL;
  numdb += nblocks;
 }
 numdb *= MIN(SPA_DVAS_PER_BP, ncopies + 1);
 volsize *= ncopies;





 numdb *= 1ULL << DN_MAX_INDBLKSHIFT;
 volsize += numdb;
 return (volsize);
}

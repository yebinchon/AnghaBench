
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iso9660_dir_t ;


 unsigned int ISO_BLOCKSIZE ;
 unsigned int iso9660_get_dir_len (int *) ;

__attribute__((used)) static bool
iso9660_check_dir_block_end(iso9660_dir_t *p_iso9660_dir, unsigned *offset)
{
  if (!iso9660_get_dir_len(p_iso9660_dir))
    {
      *offset += ISO_BLOCKSIZE - (*offset % ISO_BLOCKSIZE);
      return 1;
    }

  if ((*offset + iso9660_get_dir_len(p_iso9660_dir) - 1) / ISO_BLOCKSIZE
      != *offset / ISO_BLOCKSIZE)
    {





      *offset += ISO_BLOCKSIZE - (*offset % ISO_BLOCKSIZE);
      return 1;
    }

  return 0;
}

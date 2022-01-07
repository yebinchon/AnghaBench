
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_16__ {scalar_t__ type; unsigned int* secsize; int * lsn; } ;
typedef TYPE_1__ iso9660_stat_t ;
struct TYPE_17__ {int file_flags; } ;
typedef TYPE_2__ iso9660_dir_t ;
struct TYPE_18__ {int u_joliet_level; } ;
typedef TYPE_3__ generic_img_private_t ;
struct TYPE_19__ {scalar_t__ env; } ;
typedef int CdioISO9660FileList_t ;
typedef int CdioISO9660DirList_t ;
typedef TYPE_4__ CdIo_t ;


 unsigned int ISO_BLOCKSIZE ;
 int ISO_MULTIEXTENT ;
 scalar_t__ _STAT_DIR ;
 int _cdio_list_append (int *,TYPE_1__*) ;
 int * _cdio_list_new () ;
 TYPE_1__* _iso9660_dir_to_statbuf (TYPE_2__*,TYPE_1__*,int ,int ) ;
 int * calloc (int,unsigned int) ;
 int cdio_assert (int) ;
 scalar_t__ cdio_read_data_sectors (TYPE_4__*,int *,int ,unsigned int,unsigned int) ;
 int cdio_warn (char*,unsigned int) ;
 int dunno ;
 int free (int *) ;
 scalar_t__ iso9660_check_dir_block_end (TYPE_2__*,unsigned int*) ;
 int iso9660_dirlist_free (int *) ;
 TYPE_1__* iso9660_fs_stat (TYPE_4__*,char const*) ;
 scalar_t__ iso9660_get_dir_len (TYPE_2__*) ;
 int iso9660_stat_free (TYPE_1__*) ;

CdioISO9660FileList_t *
iso9660_fs_readdir (CdIo_t *p_cdio, const char psz_path[])
{
  generic_img_private_t *p_env;
  iso9660_dir_t *p_iso9660_dir;
  iso9660_stat_t *p_iso9660_stat = ((void*)0);
  iso9660_stat_t *p_stat;

  if (!p_cdio) return ((void*)0);
  if (!psz_path) return ((void*)0);

  p_env = (generic_img_private_t *) p_cdio->env;

  p_stat = iso9660_fs_stat (p_cdio, psz_path);
  if (!p_stat) return ((void*)0);

  if (p_stat->type != _STAT_DIR) {
    iso9660_stat_free(p_stat);
    return ((void*)0);
  }

  {
    unsigned offset = 0;
    uint8_t *_dirbuf = ((void*)0);
    CdioISO9660DirList_t *retval = _cdio_list_new ();

    _dirbuf = calloc(1, p_stat->secsize[0] * ISO_BLOCKSIZE);
    if (!_dirbuf)
      {
      cdio_warn("Couldn't calloc(1, %d)", p_stat->secsize[0] * ISO_BLOCKSIZE);
      iso9660_stat_free(p_stat);
      iso9660_dirlist_free(retval);
      return ((void*)0);
      }

    if (cdio_read_data_sectors (p_cdio, _dirbuf, p_stat->lsn[0],
    ISO_BLOCKSIZE, p_stat->secsize[0])) {
      iso9660_stat_free(p_stat);
      iso9660_dirlist_free(retval);
      return ((void*)0);
    }

    while (offset < (p_stat->secsize[0] * ISO_BLOCKSIZE))
      {
 p_iso9660_dir = (void *) &_dirbuf[offset];

 if (iso9660_check_dir_block_end(p_iso9660_dir, &offset))
     continue;

 p_iso9660_stat = _iso9660_dir_to_statbuf(p_iso9660_dir,
       p_iso9660_stat, dunno,
       p_env->u_joliet_level);
 if ((p_iso9660_stat) &&
     ((p_iso9660_dir->file_flags & ISO_MULTIEXTENT) == 0))
   {
     _cdio_list_append (retval, p_iso9660_stat);
     p_iso9660_stat = ((void*)0);
   }

 offset += iso9660_get_dir_len(p_iso9660_dir);
      }

    cdio_assert (offset == (p_stat->secsize[0] * ISO_BLOCKSIZE));

    free(_dirbuf);
    iso9660_stat_free(p_stat);
    return retval;
  }
}

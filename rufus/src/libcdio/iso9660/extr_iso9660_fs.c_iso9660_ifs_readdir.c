
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_15__ {int u_joliet_level; int b_xa; } ;
typedef TYPE_1__ iso9660_t ;
struct TYPE_16__ {scalar_t__ type; size_t* secsize; int * lsn; } ;
typedef TYPE_2__ iso9660_stat_t ;
struct TYPE_17__ {int file_flags; } ;
typedef TYPE_3__ iso9660_dir_t ;
typedef int CdioList_t ;
typedef int CdioISO9660FileList_t ;
typedef int * CdioDataFree_t ;


 size_t ISO_BLOCKSIZE ;
 int ISO_MULTIEXTENT ;
 scalar_t__ _STAT_DIR ;
 int _cdio_list_append (int *,TYPE_2__*) ;
 int _cdio_list_free (int *,int,int *) ;
 int * _cdio_list_new () ;
 TYPE_2__* _iso9660_dir_to_statbuf (TYPE_3__*,TYPE_2__*,int ,int ) ;
 int * calloc (int,size_t const) ;
 int cdio_warn (char*,unsigned long) ;
 int free (int *) ;
 scalar_t__ iso9660_check_dir_block_end (TYPE_3__*,unsigned int*) ;
 scalar_t__ iso9660_get_dir_len (TYPE_3__*) ;
 TYPE_2__* iso9660_ifs_stat (TYPE_1__*,char const*) ;
 long iso9660_iso_seek_read (TYPE_1__*,int *,int ,unsigned long) ;
 int iso9660_stat_free (TYPE_2__*) ;

CdioISO9660FileList_t *
iso9660_ifs_readdir (iso9660_t *p_iso, const char psz_path[])
{
  iso9660_dir_t *p_iso9660_dir;
  iso9660_stat_t *p_iso9660_stat = ((void*)0);
  iso9660_stat_t *p_stat;

  if (!p_iso) return ((void*)0);
  if (!psz_path) return ((void*)0);

  p_stat = iso9660_ifs_stat (p_iso, psz_path);
  if (!p_stat) return ((void*)0);

  if (p_stat->type != _STAT_DIR) {
    iso9660_stat_free(p_stat);
    return ((void*)0);
  }

  {
    long int ret;
    unsigned offset = 0;
    uint8_t *_dirbuf = ((void*)0);
    CdioList_t *retval = _cdio_list_new ();
    const size_t dirbuf_len = p_stat->secsize[0] * ISO_BLOCKSIZE;


    if (!dirbuf_len)
      {
        cdio_warn("Invalid directory buffer sector size %u", p_stat->secsize[0]);
 iso9660_stat_free(p_stat);
 _cdio_list_free (retval, 1, ((void*)0));
        return ((void*)0);
      }

    _dirbuf = calloc(1, dirbuf_len);
    if (!_dirbuf)
      {
        cdio_warn("Couldn't calloc(1, %lu)", (unsigned long)dirbuf_len);
 iso9660_stat_free(p_stat);
 _cdio_list_free (retval, 1, ((void*)0));
        return ((void*)0);
      }

    ret = iso9660_iso_seek_read (p_iso, _dirbuf, p_stat->lsn[0], p_stat->secsize[0]);
    if (ret != dirbuf_len) {
      _cdio_list_free (retval, 1, ((void*)0));
      iso9660_stat_free(p_stat);
      free (_dirbuf);
      return ((void*)0);
    }

    while (offset < (dirbuf_len))
      {
 p_iso9660_dir = (void *) &_dirbuf[offset];

 if (iso9660_check_dir_block_end(p_iso9660_dir, &offset))
   continue;

 p_iso9660_stat = _iso9660_dir_to_statbuf(p_iso9660_dir,
       p_iso9660_stat,
       p_iso->b_xa,
       p_iso->u_joliet_level);
 if ((p_iso9660_stat) &&
     ((p_iso9660_dir->file_flags & ISO_MULTIEXTENT) == 0))
   {
     _cdio_list_append(retval, p_iso9660_stat);
     p_iso9660_stat = ((void*)0);
   }

 offset += iso9660_get_dir_len(p_iso9660_dir);
      }

    free (_dirbuf);
    iso9660_stat_free(p_stat);

    if (offset != dirbuf_len) {
      _cdio_list_free (retval, 1, (CdioDataFree_t) iso9660_stat_free);
      return ((void*)0);
    }

    return retval;
  }
}

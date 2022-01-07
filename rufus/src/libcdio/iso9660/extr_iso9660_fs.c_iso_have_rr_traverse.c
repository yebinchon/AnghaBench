
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int b3_rock; } ;
struct TYPE_13__ {scalar_t__ type; int* secsize; TYPE_1__ rr; int * lsn; } ;
typedef TYPE_2__ uint8_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_14__ {int u_joliet_level; int b_xa; } ;
typedef TYPE_3__ iso9660_t ;
typedef TYPE_2__ iso9660_stat_t ;
typedef int iso9660_dir_t ;
typedef int bool_3way_t ;


 int ISO_BLOCKSIZE ;
 scalar_t__ _STAT_DIR ;
 scalar_t__ _STAT_FILE ;
 TYPE_2__* _iso9660_dir_to_statbuf (int *,int *,int ,int ) ;
 TYPE_2__* calloc (int,int) ;
 int cdio_assert (int) ;
 int cdio_warn (char*,int) ;
 int dunno ;
 int free (TYPE_2__*) ;
 scalar_t__ iso9660_check_dir_block_end (int *,unsigned int*) ;
 scalar_t__ iso9660_get_dir_len (int *) ;
 int iso9660_iso_seek_read (TYPE_3__*,TYPE_2__*,int ,int) ;
 int nope ;
 scalar_t__ strlen (char*) ;
 int yep ;

__attribute__((used)) static bool_3way_t
iso_have_rr_traverse (iso9660_t *p_iso, const iso9660_stat_t *_root,
        char **splitpath, uint64_t *pu_file_limit)
{
  unsigned offset = 0;
  uint8_t *_dirbuf = ((void*)0);
  int ret;
  bool_3way_t have_rr = nope;

  if (!splitpath[0]) return 0;

  if (_root->type == _STAT_FILE) return nope;
  if (*pu_file_limit == 0) return dunno;

  cdio_assert (_root->type == _STAT_DIR);

  _dirbuf = calloc(1, _root->secsize[0] * ISO_BLOCKSIZE);
  if (!_dirbuf)
    {
    cdio_warn("Couldn't calloc(1, %d)", _root->secsize[0] * ISO_BLOCKSIZE);
    return dunno;
    }

  ret = iso9660_iso_seek_read (p_iso, _dirbuf, _root->lsn[0], _root->secsize[0]);
  if (ret!=ISO_BLOCKSIZE*_root->secsize[0]) {
    free(_dirbuf);
    return 0;
  }

  while (offset < (_root->secsize[0] * ISO_BLOCKSIZE))
    {
      iso9660_dir_t *p_iso9660_dir = (void *) &_dirbuf[offset];
      iso9660_stat_t *p_stat;
      unsigned int i_last_component = 1;

      if (iso9660_check_dir_block_end(p_iso9660_dir, &offset))
        continue;

      p_stat = _iso9660_dir_to_statbuf (p_iso9660_dir, ((void*)0), p_iso->b_xa,
     p_iso->u_joliet_level);
      have_rr = p_stat->rr.b3_rock;
      if ( have_rr != yep) {
        if (strlen(splitpath[0]) == 0)
          have_rr = 0;
        else
          have_rr = iso_have_rr_traverse (p_iso, p_stat, &splitpath[i_last_component],
       pu_file_limit);
      }
      free(p_stat);
      if (have_rr != nope) {
        free (_dirbuf);
        return have_rr;
      }

      offset += iso9660_get_dir_len(p_iso9660_dir);
      *pu_file_limit = (*pu_file_limit)-1;
      if ((*pu_file_limit) == 0) {
        free (_dirbuf);
        return dunno;
      }
    }

  cdio_assert (offset == (_root->secsize[0] * ISO_BLOCKSIZE));


  free (_dirbuf);
  return nope;
}

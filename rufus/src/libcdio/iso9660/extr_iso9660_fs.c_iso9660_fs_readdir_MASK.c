#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_16__ {scalar_t__ type; unsigned int* secsize; int /*<<< orphan*/ * lsn; } ;
typedef  TYPE_1__ iso9660_stat_t ;
struct TYPE_17__ {int file_flags; } ;
typedef  TYPE_2__ iso9660_dir_t ;
struct TYPE_18__ {int /*<<< orphan*/  u_joliet_level; } ;
typedef  TYPE_3__ generic_img_private_t ;
struct TYPE_19__ {scalar_t__ env; } ;
typedef  int /*<<< orphan*/  CdioISO9660FileList_t ;
typedef  int /*<<< orphan*/  CdioISO9660DirList_t ;
typedef  TYPE_4__ CdIo_t ;

/* Variables and functions */
 unsigned int ISO_BLOCKSIZE ; 
 int ISO_MULTIEXTENT ; 
 scalar_t__ _STAT_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 TYPE_1__* FUNC2 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int) ; 
 int /*<<< orphan*/  dunno ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_2__*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (TYPE_4__*,char const*) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

CdioISO9660FileList_t *
FUNC13 (CdIo_t *p_cdio, const char psz_path[])
{
  generic_img_private_t *p_env;
  iso9660_dir_t *p_iso9660_dir;
  iso9660_stat_t *p_iso9660_stat = NULL;
  iso9660_stat_t *p_stat;

  if (!p_cdio)   return NULL;
  if (!psz_path) return NULL;

  p_env = (generic_img_private_t *) p_cdio->env;

  p_stat = FUNC10 (p_cdio, psz_path);
  if (!p_stat) return NULL;

  if (p_stat->type != _STAT_DIR) {
    FUNC12(p_stat);
    return NULL;
  }

  {
    unsigned offset = 0;
    uint8_t *_dirbuf = NULL;
    CdioISO9660DirList_t *retval = FUNC1 ();

    _dirbuf = FUNC3(1, p_stat->secsize[0] * ISO_BLOCKSIZE);
    if (!_dirbuf)
      {
      FUNC6("Couldn't calloc(1, %d)", p_stat->secsize[0] * ISO_BLOCKSIZE);
      FUNC12(p_stat);
      FUNC9(retval);
      return NULL;
      }

    if (FUNC5 (p_cdio, _dirbuf, p_stat->lsn[0],
				ISO_BLOCKSIZE, p_stat->secsize[0])) {
      FUNC12(p_stat);
      FUNC9(retval);
      return NULL;
    }

    while (offset < (p_stat->secsize[0] * ISO_BLOCKSIZE))
      {
	p_iso9660_dir = (void *) &_dirbuf[offset];

	if (FUNC8(p_iso9660_dir, &offset))
  	  continue;

	p_iso9660_stat = FUNC2(p_iso9660_dir,
						 p_iso9660_stat, dunno,
						 p_env->u_joliet_level);
	if ((p_iso9660_stat) &&
	    ((p_iso9660_dir->file_flags & ISO_MULTIEXTENT) == 0))
	  {
	    FUNC0 (retval, p_iso9660_stat);
	    p_iso9660_stat = NULL;
	  }

	offset += FUNC11(p_iso9660_dir);
      }

    FUNC4 (offset == (p_stat->secsize[0] * ISO_BLOCKSIZE));

    FUNC7(_dirbuf);
    FUNC12(p_stat);
    return retval;
  }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_15__ {int /*<<< orphan*/  u_joliet_level; int /*<<< orphan*/  b_xa; } ;
typedef  TYPE_1__ iso9660_t ;
struct TYPE_16__ {scalar_t__ type; size_t* secsize; int /*<<< orphan*/ * lsn; } ;
typedef  TYPE_2__ iso9660_stat_t ;
struct TYPE_17__ {int file_flags; } ;
typedef  TYPE_3__ iso9660_dir_t ;
typedef  int /*<<< orphan*/  CdioList_t ;
typedef  int /*<<< orphan*/  CdioISO9660FileList_t ;
typedef  int /*<<< orphan*/ * CdioDataFree_t ;

/* Variables and functions */
 size_t ISO_BLOCKSIZE ; 
 int ISO_MULTIEXTENT ; 
 scalar_t__ _STAT_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 TYPE_2__* FUNC3 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int,size_t const) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_3__*,unsigned int*) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 TYPE_2__* FUNC9 (TYPE_1__*,char const*) ; 
 long FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

CdioISO9660FileList_t *
FUNC12 (iso9660_t *p_iso, const char psz_path[])
{
  iso9660_dir_t *p_iso9660_dir;
  iso9660_stat_t *p_iso9660_stat = NULL;
  iso9660_stat_t *p_stat;

  if (!p_iso)    return NULL;
  if (!psz_path) return NULL;

  p_stat = FUNC9 (p_iso, psz_path);
  if (!p_stat)   return NULL;

  if (p_stat->type != _STAT_DIR) {
    FUNC11(p_stat);
    return NULL;
  }

  {
    long int ret;
    unsigned offset = 0;
    uint8_t *_dirbuf = NULL;
    CdioList_t *retval = FUNC2 ();
    const size_t dirbuf_len = p_stat->secsize[0] * ISO_BLOCKSIZE;


    if (!dirbuf_len)
      {
        FUNC5("Invalid directory buffer sector size %u", p_stat->secsize[0]);
	FUNC11(p_stat);
	FUNC1 (retval, true, NULL);
        return NULL;
      }

    _dirbuf = FUNC4(1, dirbuf_len);
    if (!_dirbuf)
      {
        FUNC5("Couldn't calloc(1, %lu)", (unsigned long)dirbuf_len);
	FUNC11(p_stat);
	FUNC1 (retval, true, NULL);
        return NULL;
      }

    ret = FUNC10 (p_iso, _dirbuf, p_stat->lsn[0], p_stat->secsize[0]);
    if (ret != dirbuf_len) 	  {
      FUNC1 (retval, true, NULL);
      FUNC11(p_stat);
      FUNC6 (_dirbuf);
      return NULL;
    }

    while (offset < (dirbuf_len))
      {
	p_iso9660_dir = (void *) &_dirbuf[offset];

	if (FUNC7(p_iso9660_dir, &offset))
	  continue;

	p_iso9660_stat = FUNC3(p_iso9660_dir,
						 p_iso9660_stat,
						 p_iso->b_xa,
						 p_iso->u_joliet_level);
	if ((p_iso9660_stat) &&
	    ((p_iso9660_dir->file_flags & ISO_MULTIEXTENT) == 0))
	  {
	    FUNC0(retval, p_iso9660_stat);
	    p_iso9660_stat = NULL;
	  }

	offset += FUNC8(p_iso9660_dir);
      }

    FUNC6 (_dirbuf);
    FUNC11(p_stat);

    if (offset != dirbuf_len) {
      FUNC1 (retval, true, (CdioDataFree_t) iso9660_stat_free);
      return NULL;
    }

    return retval;
  }
}
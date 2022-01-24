#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int b3_rock; } ;
struct TYPE_13__ {scalar_t__ type; int* secsize; TYPE_1__ rr; int /*<<< orphan*/ * lsn; } ;
typedef  TYPE_2__ uint8_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_14__ {int /*<<< orphan*/  u_joliet_level; int /*<<< orphan*/  b_xa; } ;
typedef  TYPE_3__ iso9660_t ;
typedef  TYPE_2__ iso9660_stat_t ;
typedef  int /*<<< orphan*/  iso9660_dir_t ;
typedef  int bool_3way_t ;

/* Variables and functions */
 int ISO_BLOCKSIZE ; 
 scalar_t__ _STAT_DIR ; 
 scalar_t__ _STAT_FILE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int dunno ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int nope ; 
 scalar_t__ FUNC8 (char*) ; 
 int yep ; 

__attribute__((used)) static bool_3way_t
FUNC9 (iso9660_t *p_iso, const iso9660_stat_t *_root,
		      char **splitpath, uint64_t *pu_file_limit)
{
  unsigned offset = 0;
  uint8_t *_dirbuf = NULL;
  int ret;
  bool_3way_t have_rr = nope;

  if (!splitpath[0]) return false;

  if (_root->type == _STAT_FILE) return nope;
  if (*pu_file_limit == 0) return dunno;

  FUNC2 (_root->type == _STAT_DIR);

  _dirbuf = FUNC1(1, _root->secsize[0] * ISO_BLOCKSIZE);
  if (!_dirbuf)
    {
    FUNC3("Couldn't calloc(1, %d)", _root->secsize[0] * ISO_BLOCKSIZE);
    return dunno;
    }

  ret = FUNC7 (p_iso, _dirbuf, _root->lsn[0], _root->secsize[0]);
  if (ret!=ISO_BLOCKSIZE*_root->secsize[0]) {
    FUNC4(_dirbuf);
    return false;
  }

  while (offset < (_root->secsize[0] * ISO_BLOCKSIZE))
    {
      iso9660_dir_t *p_iso9660_dir = (void *) &_dirbuf[offset];
      iso9660_stat_t *p_stat;
      unsigned int i_last_component = 1;

      if (FUNC5(p_iso9660_dir, &offset))
        continue;

      p_stat = FUNC0 (p_iso9660_dir, NULL, p_iso->b_xa,
					p_iso->u_joliet_level);
      have_rr = p_stat->rr.b3_rock;
      if ( have_rr != yep) {
        if (FUNC8(splitpath[0]) == 0)
          have_rr = false;
        else
          have_rr = FUNC9 (p_iso, p_stat, &splitpath[i_last_component],
					  pu_file_limit);
      }
      FUNC4(p_stat);
      if (have_rr != nope) {
        FUNC4 (_dirbuf);
        return have_rr;
      }

      offset += FUNC6(p_iso9660_dir);
      *pu_file_limit = (*pu_file_limit)-1;
      if ((*pu_file_limit) == 0) {
        FUNC4 (_dirbuf);
        return dunno;
      }
    }

  FUNC2 (offset == (_root->secsize[0] * ISO_BLOCKSIZE));

  /* not found */
  FUNC4 (_dirbuf);
  return nope;
}
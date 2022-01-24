#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  crit; } ;
typedef  TYPE_1__ file_crit ;
struct TYPE_8__ {int wxflag; } ;
struct TYPE_7__ {int _file; unsigned int _flag; int /*<<< orphan*/ * _tmpfname; scalar_t__ _cnt; int /*<<< orphan*/ * _base; int /*<<< orphan*/  _ptr; } ;
typedef  TYPE_2__ FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int WX_OPEN ; 
 int _IOB_ENTRIES ; 
 scalar_t__* FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 TYPE_2__* _iob ; 
 TYPE_4__* FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(FILE* file, int fd, unsigned stream_flags)
{
  FUNC1(":fd (%d) allocating FILE*\n",fd);
  if (!(FUNC5(fd)->wxflag & WX_OPEN))
  {
    FUNC2(":invalid fd %d\n",fd);
    *FUNC3() = 0;
    *FUNC4() = EBADF;
    return -1;
  }
  file->_ptr = *(file->_base = NULL);
  file->_cnt = 0;
  file->_file = fd;
  file->_flag = stream_flags;
  file->_tmpfname = NULL;

  if(file<_iob || file>=_iob+_IOB_ENTRIES)
      FUNC0(&((file_crit*)file)->crit);

  FUNC1(":got FILE* (%p)\n",file);
  return 0;
}
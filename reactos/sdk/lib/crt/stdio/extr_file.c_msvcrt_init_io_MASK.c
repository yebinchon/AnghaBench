#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int wxflag; scalar_t__ handle; } ;
typedef  TYPE_1__ ioinfo ;
struct TYPE_14__ {int /*<<< orphan*/  handle; } ;
struct TYPE_13__ {unsigned int _file; int /*<<< orphan*/  _flag; int /*<<< orphan*/ * _tmpfname; } ;
struct TYPE_12__ {int cbReserved2; int* lpReserved2; } ;
typedef  TYPE_2__ STARTUPINFOA ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int DWORD ;
typedef  int BYTE ;

/* Variables and functions */
 int FILE_TYPE_CHAR ; 
 int FILE_TYPE_PIPE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MSVCRT_MAX_FILES ; 
 int MSVCRT_stream_idx ; 
 unsigned int STDERR_FILENO ; 
 unsigned int STDIN_FILENO ; 
 unsigned int STDOUT_FILENO ; 
 int /*<<< orphan*/  STD_ERROR_HANDLE ; 
 int /*<<< orphan*/  STD_INPUT_HANDLE ; 
 int /*<<< orphan*/  STD_OUTPUT_HANDLE ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int WX_OPEN ; 
 int WX_PIPE ; 
 int WX_TEXT ; 
 int WX_TTY ; 
 int /*<<< orphan*/  _IOREAD ; 
 int /*<<< orphan*/  _IOWRT ; 
 TYPE_1__ __badioinfo ; 
 TYPE_5__* _iob ; 
 TYPE_1__* FUNC4 (unsigned int) ; 
 TYPE_6__* FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC7 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

void FUNC10(void)
{
  STARTUPINFOA  si;
  unsigned int  i;
  ioinfo        *fdinfo;

  FUNC1(&si);
  if (si.cbReserved2 >= sizeof(unsigned int) && si.lpReserved2 != NULL)
  {
    BYTE*       wxflag_ptr;
    HANDLE*     handle_ptr;
    unsigned int count;

    count = *(unsigned*)si.lpReserved2;
    wxflag_ptr = si.lpReserved2 + sizeof(unsigned);
    handle_ptr = (HANDLE*)(wxflag_ptr + count);

    count = FUNC7(count, (si.cbReserved2 - sizeof(unsigned)) / (sizeof(HANDLE) + 1));
    count = FUNC7(count, MSVCRT_MAX_FILES);
    for (i = 0; i < count; i++)
    {
      if ((*wxflag_ptr & WX_OPEN) && *handle_ptr != INVALID_HANDLE_VALUE)
      {
        fdinfo = FUNC4(i);
        if(fdinfo != &__badioinfo)
            FUNC8(fdinfo, *handle_ptr, *wxflag_ptr);
        FUNC9(fdinfo);
      }

      wxflag_ptr++; handle_ptr++;
    }
  }

  fdinfo = FUNC4(STDIN_FILENO);
  if (!(fdinfo->wxflag & WX_OPEN) || fdinfo->handle == INVALID_HANDLE_VALUE) {
    HANDLE h = FUNC2(STD_INPUT_HANDLE);
    DWORD type = FUNC0(h);

    FUNC8(fdinfo, h, WX_OPEN|WX_TEXT|((type&0xf)==FILE_TYPE_CHAR ? WX_TTY : 0)
            |((type&0xf)==FILE_TYPE_PIPE ? WX_PIPE : 0));
  }
  FUNC9(fdinfo);

  fdinfo = FUNC4(STDOUT_FILENO);
  if (!(fdinfo->wxflag & WX_OPEN) || fdinfo->handle == INVALID_HANDLE_VALUE) {
    HANDLE h = FUNC2(STD_OUTPUT_HANDLE);
    DWORD type = FUNC0(h);

    FUNC8(fdinfo, h, WX_OPEN|WX_TEXT|((type&0xf)==FILE_TYPE_CHAR ? WX_TTY : 0)
            |((type&0xf)==FILE_TYPE_PIPE ? WX_PIPE : 0));
  }
  FUNC9(fdinfo);

  fdinfo = FUNC4(STDERR_FILENO);
  if (!(fdinfo->wxflag & WX_OPEN) || fdinfo->handle == INVALID_HANDLE_VALUE) {
    HANDLE h = FUNC2(STD_ERROR_HANDLE);
    DWORD type = FUNC0(h);

    FUNC8(fdinfo, h, WX_OPEN|WX_TEXT|((type&0xf)==FILE_TYPE_CHAR ? WX_TTY : 0)
            |((type&0xf)==FILE_TYPE_PIPE ? WX_PIPE : 0));
  }
  FUNC9(fdinfo);

  FUNC3(":handles (%p)(%p)(%p)\n", FUNC5(STDIN_FILENO)->handle,
        FUNC5(STDOUT_FILENO)->handle,
        FUNC5(STDERR_FILENO)->handle);

  FUNC6(_iob,0,3*sizeof(FILE));
  for (i = 0; i < 3; i++)
  {
    /* FILE structs for stdin/out/err are static and never deleted */
    _iob[i]._file = i;
    _iob[i]._tmpfname = NULL;
    _iob[i]._flag = (i == 0) ? _IOREAD : _IOWRT;
  }
  MSVCRT_stream_idx = 3;
}
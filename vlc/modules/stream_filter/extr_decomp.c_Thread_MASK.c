#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct iovec {unsigned char* iov_base; scalar_t__ iov_len; } ;
struct TYPE_5__ {int /*<<< orphan*/  s; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_6__ {int write_fd; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; scalar_t__ paused; } ;
typedef  TYPE_2__ stream_sys_t ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 scalar_t__ ENOSYS ; 
 scalar_t__ EPIPE ; 
 int MAP_ANONYMOUS ; 
 unsigned char* MAP_FAILED ; 
 int MAP_PRIVATE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SPLICE_F_GIFT ; 
 int /*<<< orphan*/  _SC_PAGE_SIZE ; 
 int /*<<< orphan*/  bufsize ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  (*) (unsigned char*),unsigned char*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int FUNC19 () ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 scalar_t__ FUNC22 (int,struct iovec*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int,unsigned char*,scalar_t__) ; 

__attribute__((used)) static void *FUNC24 (void *data)
{
    stream_t *stream = data;
    stream_sys_t *p_sys = stream->p_sys;
#ifdef HAVE_VMSPLICE
    const ssize_t page_mask = sysconf (_SC_PAGE_SIZE) - 1;
#endif
    int fd = p_sys->write_fd;
    bool error = false;
    sigset_t set;

    FUNC9(&set);
    FUNC8(&set, SIGPIPE);
    FUNC7(SIG_BLOCK, &set, NULL);

    do
    {
        ssize_t len;
        int canc = FUNC19 ();
#ifdef HAVE_VMSPLICE
        unsigned char *buf = mmap (NULL, bufsize, PROT_READ|PROT_WRITE,
                                   MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
        if (unlikely(buf == MAP_FAILED))
            break;
        vlc_cleanup_push (cleanup_mmap, buf);
#else
        unsigned char *buf = FUNC2 (bufsize);
        if (FUNC11(buf == NULL))
            break;
        FUNC13 (free, buf);
#endif

        FUNC16 (&p_sys->lock);
        while (p_sys->paused) /* practically always false, but... */
            FUNC15 (&p_sys->wait, &p_sys->lock);
        len = FUNC20 (stream->s, buf, bufsize);
        FUNC17 (&p_sys->lock);

        FUNC18 (canc);
        error = len <= 0;

        for (ssize_t i = 0, j; i < len; i += j)
        {
#ifdef HAVE_VMSPLICE
            if ((len - i) <= page_mask) /* incomplete last page */
                j = write (fd, buf + i, len - i);
            else
            {
                struct iovec iov = {
                    .iov_base = buf + i,
                    .iov_len = (len - i) & ~page_mask };

                j = vmsplice (fd, &iov, 1, SPLICE_F_GIFT);
            }
            if (j == -1 && errno == ENOSYS) /* vmsplice() not supported */
#endif
            j = FUNC23 (fd, buf + i, len - i);
            if (j <= 0)
            {
                if (j == 0)
                    errno = EPIPE;
                FUNC5 (stream, "cannot write data: %s",
                         FUNC21(errno));
                error = true;
                break;
            }
        }
        FUNC12 ();
#ifdef HAVE_VMSPLICE
        munmap (buf, bufsize);
#else
        FUNC1 (buf);
#endif
    }
    while (!error);

    FUNC4 (stream, "compressed stream at EOF");
    /* Let child process know about EOF */
    p_sys->write_fd = -1;
    FUNC14 (fd);
    return NULL;
}
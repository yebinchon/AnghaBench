
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct iovec {unsigned char* iov_base; scalar_t__ iov_len; } ;
struct TYPE_5__ {int s; TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_6__ {int write_fd; int lock; int wait; scalar_t__ paused; } ;
typedef TYPE_2__ stream_sys_t ;
typedef scalar_t__ ssize_t ;
typedef int sigset_t ;


 scalar_t__ ENOSYS ;
 scalar_t__ EPIPE ;
 int MAP_ANONYMOUS ;
 unsigned char* MAP_FAILED ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SIGPIPE ;
 int SIG_BLOCK ;
 int SPLICE_F_GIFT ;
 int _SC_PAGE_SIZE ;
 int bufsize ;
 int cleanup_mmap (unsigned char*) ;
 scalar_t__ errno ;
 int free (unsigned char*) ;
 unsigned char* malloc (int ) ;
 unsigned char* mmap (int *,int ,int,int,int,int ) ;
 int msg_Dbg (TYPE_1__*,char*) ;
 int msg_Err (TYPE_1__*,char*,int ) ;
 int munmap (unsigned char*,int ) ;
 int pthread_sigmask (int ,int *,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 scalar_t__ sysconf (int ) ;
 scalar_t__ unlikely (int) ;
 int vlc_cleanup_pop () ;
 int vlc_cleanup_push (int (*) (unsigned char*),unsigned char*) ;
 int vlc_close (int) ;
 int vlc_cond_wait (int *,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;
 scalar_t__ vlc_stream_Read (int ,unsigned char*,int ) ;
 int vlc_strerror_c (scalar_t__) ;
 scalar_t__ vmsplice (int,struct iovec*,int,int ) ;
 scalar_t__ write (int,unsigned char*,scalar_t__) ;

__attribute__((used)) static void *Thread (void *data)
{
    stream_t *stream = data;
    stream_sys_t *p_sys = stream->p_sys;



    int fd = p_sys->write_fd;
    bool error = 0;
    sigset_t set;

    sigemptyset(&set);
    sigaddset(&set, SIGPIPE);
    pthread_sigmask(SIG_BLOCK, &set, ((void*)0));

    do
    {
        ssize_t len;
        int canc = vlc_savecancel ();







        unsigned char *buf = malloc (bufsize);
        if (unlikely(buf == ((void*)0)))
            break;
        vlc_cleanup_push (free, buf);


        vlc_mutex_lock (&p_sys->lock);
        while (p_sys->paused)
            vlc_cond_wait (&p_sys->wait, &p_sys->lock);
        len = vlc_stream_Read (stream->s, buf, bufsize);
        vlc_mutex_unlock (&p_sys->lock);

        vlc_restorecancel (canc);
        error = len <= 0;

        for (ssize_t i = 0, j; i < len; i += j)
        {
            j = write (fd, buf + i, len - i);
            if (j <= 0)
            {
                if (j == 0)
                    errno = EPIPE;
                msg_Err (stream, "cannot write data: %s",
                         vlc_strerror_c(errno));
                error = 1;
                break;
            }
        }
        vlc_cleanup_pop ();



        free (buf);

    }
    while (!error);

    msg_Dbg (stream, "compressed stream at EOF");

    p_sys->write_fd = -1;
    vlc_close (fd);
    return ((void*)0);
}

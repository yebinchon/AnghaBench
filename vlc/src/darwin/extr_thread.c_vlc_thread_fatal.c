
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;



 int abort () ;
 int fflush (int ) ;
 int fprintf (int ,char*,char const*,...) ;
 int stderr ;
 int strerror_r (int,char*,int) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;
 int vlc_thread_id () ;
 int vlc_trace (char const*,char const*,unsigned int) ;

__attribute__((used)) static void
vlc_thread_fatal (const char *action, int error,
                  const char *function, const char *file, unsigned line)
{
    int canc = vlc_savecancel ();
    fprintf (stderr, "LibVLC fatal error %s (%d) in thread %lu ",
             action, error, vlc_thread_id ());
    vlc_trace (function, file, line);

    char buf[1000];
    const char *msg;

    switch (strerror_r (error, buf, sizeof (buf)))
    {
        case 0:
            msg = buf;
            break;
        case 128:
            msg = "unknown (too big to display)";
            break;
        default:
            msg = "unknown (invalid error number)";
            break;
    }
    fprintf (stderr, " Error message: %s\n", msg);
    fflush (stderr);

    vlc_restorecancel (canc);
    abort ();
}

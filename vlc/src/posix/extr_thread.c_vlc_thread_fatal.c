
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int fflush (int ) ;
 int fprintf (int ,char*,char const*,int,int ) ;
 int perror (char*) ;
 int stderr ;
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
    perror ("Thread error");
    fflush (stderr);

    vlc_restorecancel (canc);
    abort ();
}

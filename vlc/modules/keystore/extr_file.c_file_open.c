
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int LOCK_EX ;
 int fclose (int *) ;
 int fileno (int *) ;
 scalar_t__ flock (int,int ) ;
 scalar_t__ posix_lock_fd (int) ;
 int * vlc_fopen (char const*,char const*) ;

__attribute__((used)) static int
file_open(const char *psz_file, const char *psz_mode, FILE **pp_file)
{
    FILE *p_file = vlc_fopen(psz_file, psz_mode);
    if (p_file == ((void*)0))
        return -1;

    int i_fd = fileno(p_file);
    if (i_fd == -1)
    {
        fclose(p_file);
        return -1;
    }
    *pp_file = p_file;
    return i_fd;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int psz_file ;
typedef int psz_data ;


 int MAXLEN ;
 int O_WRONLY ;
 int snprintf (char*,int,char const*,unsigned int) ;
 scalar_t__ strlen (char*) ;
 int vlc_close (int) ;
 int vlc_open (char*,int ) ;
 int write (int,char*,scalar_t__) ;

__attribute__((used)) static ssize_t WriteULSysfs( const char *psz_fmt, unsigned int i_link,
                             unsigned int i_buf )
{
    char psz_file[MAXLEN], psz_data[MAXLEN];
    int i_fd;
    ssize_t i_ret;

    snprintf( psz_file, sizeof(psz_file) -1, psz_fmt, i_link );

    snprintf( psz_data, sizeof(psz_data) -1, "%u\n", i_buf );

    if ( (i_fd = vlc_open( psz_file, O_WRONLY )) < 0 )
        return i_fd;

    i_ret = write( i_fd, psz_data, strlen(psz_data) + 1 );
    vlc_close( i_fd );
    return i_ret;
}

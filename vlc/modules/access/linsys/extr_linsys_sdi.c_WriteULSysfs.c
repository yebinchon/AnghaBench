
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int psz_file ;
typedef int FILE ;


 int MAXLEN ;
 int fclose (int *) ;
 int fprintf (int *,char*,unsigned int) ;
 int snprintf (char*,int,char const*,unsigned int) ;
 int * vlc_fopen (char*,char*) ;

__attribute__((used)) static int WriteULSysfs( const char *psz_fmt, unsigned int i_link,
                         unsigned int i_buf )
{
    char psz_file[MAXLEN];

    snprintf( psz_file, sizeof(psz_file), psz_fmt, i_link );

    FILE *stream = vlc_fopen( psz_file, "wt" );
    if( stream == ((void*)0) )
        return -1;

    int ret = fprintf( stream, "%u\n", i_buf );
    fclose( stream );
    return ret;
}

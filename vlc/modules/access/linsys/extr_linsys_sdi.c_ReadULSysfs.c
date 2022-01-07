
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int psz_file ;
typedef int FILE ;


 unsigned int INT_MAX ;
 int MAXLEN ;
 int fclose (int *) ;
 int fscanf (int *,char*,unsigned int*) ;
 int snprintf (char*,int,char const*,unsigned int) ;
 int * vlc_fopen (char*,char*) ;

__attribute__((used)) static int ReadULSysfs( const char *psz_fmt, unsigned int i_link )
{
    char psz_file[MAXLEN];
    unsigned int i_data;

    snprintf( psz_file, sizeof(psz_file), psz_fmt, i_link );

    FILE *stream = vlc_fopen( psz_file, "rt" );
    if( stream == ((void*)0) )
        return -1;

    int ret = fscanf( stream, "%u", &i_data );
    fclose( stream );

    return (ret == 1 && i_data <= INT_MAX) ? (int)i_data : -1;
}

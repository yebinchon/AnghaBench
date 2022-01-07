
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* strdup (char const*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static char * get_language_from_filename( const char * psz_sub_file )
{
    char *psz_ret = ((void*)0);
    char *psz_tmp, *psz_language_begin;

    if( !psz_sub_file ) return ((void*)0);
    char *psz_work = strdup( psz_sub_file );


    psz_tmp = strrchr( psz_work, '.' );
    if( psz_tmp )
    {
        psz_tmp[0] = '\0';
        psz_language_begin = strrchr( psz_work, '.' );
        if( psz_language_begin )
            psz_ret = strdup(++psz_language_begin);
        psz_tmp[0] = '.';
    }

    free( psz_work );
    return psz_ret;
}

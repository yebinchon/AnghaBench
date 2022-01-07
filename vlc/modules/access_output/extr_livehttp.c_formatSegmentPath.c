
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int SEG_NUMBER_PLACEHOLDER ;
 int asprintf (char**,char*,char*,int,int ,char*) ;
 int free (char*) ;
 int strcspn (char*,int ) ;
 int strspn (char*,int ) ;
 char* vlc_strftime (char*) ;

__attribute__((used)) static char *formatSegmentPath( char *psz_path, uint32_t i_seg )
{
    char *psz_result;
    char *psz_firstNumSign;

    if ( ! ( psz_result = vlc_strftime( psz_path ) ) )
        return ((void*)0);

    psz_firstNumSign = psz_result + strcspn( psz_result, SEG_NUMBER_PLACEHOLDER );
    if ( *psz_firstNumSign )
    {
        char *psz_newResult;
        int i_cnt = strspn( psz_firstNumSign, SEG_NUMBER_PLACEHOLDER );
        int ret;

        *psz_firstNumSign = '\0';
        ret = asprintf( &psz_newResult, "%s%0*d%s", psz_result, i_cnt, i_seg, psz_firstNumSign + i_cnt );
        free ( psz_result );
        if ( ret < 0 )
            return ((void*)0);
        psz_result = psz_newResult;
    }

    return psz_result;
}

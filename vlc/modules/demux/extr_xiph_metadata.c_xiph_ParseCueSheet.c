
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_meta_t ;
typedef int seekpoint_t ;


 int TAB_APPEND (int,int **,int *) ;
 int free (char*) ;
 char* strndup (char const*,int) ;
 int vlc_seekpoint_Delete (int *) ;
 int xiph_ParseCueSheetMeta (unsigned int*,int *,char*,int*,int ***,int **,int*) ;

__attribute__((used)) static void xiph_ParseCueSheet( unsigned *pi_flags, vlc_meta_t *p_meta,
                                const char *p_data, int i_data,
                                int *pi_seekpoint, seekpoint_t ***ppp_seekpoint )
{
    seekpoint_t *p_seekpoint = ((void*)0);
    bool b_valid = 0;

    const char *p_head = p_data;
    const char *p_tail = p_head;
    while( p_tail < p_data + i_data )
    {
        if( *p_tail == 0x0D )
        {
            char *psz = strndup( p_head, p_tail - p_head );
            if( psz )
            {
                xiph_ParseCueSheetMeta( pi_flags, p_meta, psz,
                                        pi_seekpoint, ppp_seekpoint,
                                        &p_seekpoint, &b_valid );
                free( psz );
            }
            if( *(++p_tail) == 0x0A )
                p_tail++;
            p_head = p_tail;
        }
        else
        {
            p_tail++;
        }
    }


    if( p_seekpoint )
    {
        if( b_valid )
            TAB_APPEND( *pi_seekpoint, *ppp_seekpoint, p_seekpoint );
        else
            vlc_seekpoint_Delete( p_seekpoint );
    }
}

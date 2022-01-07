
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int isalnum (char const) ;
 int isdigit (char const) ;
 int isxdigit (char const) ;
 char* strchr (char const*,char) ;
 int * strpbrk (char const*,char*) ;

__attribute__((used)) static bool isXmlEncoded(const char* psz_str)
{
    assert( psz_str != ((void*)0) );

    if( strpbrk(psz_str, "<>'\"") != ((void*)0) )
        return 0;

    bool is_escaped = 0;
    while( 1 )
    {
        const char* psz_amp = strchr(psz_str, '&');
        if( psz_amp == ((void*)0) )
            break;
        const char* psz_end = strchr(psz_amp, ';');
        if( psz_end == ((void*)0) )
            return 0;

        else if(psz_amp[1] == '#')
        {
            if( psz_amp[2] == 'x' )
            {
                const char* psz_ptr = &psz_amp[3];
                if( psz_ptr == psz_end )
                    return 0;
                for ( ; psz_ptr < psz_end; psz_ptr++)
                    if( ! isxdigit( *psz_ptr ) )
                        return 0;
            }
            else
            {
                const char* psz_ptr = &(psz_amp[2]);
                if( psz_ptr == psz_end )
                    return 0;
                for ( ; psz_ptr < psz_end; psz_ptr++)
                    if( ! isdigit( *psz_ptr ) )
                        return 0;
            }
        }
        else
        {
            const char* psz_ptr = &(psz_amp[1]);
            if( psz_ptr == psz_end )
                return 0;
            for ( ; psz_ptr < psz_end; psz_ptr++)
                if( ! isalnum( *psz_ptr ) )
                    return 0;
        }
        is_escaped = 1;
        psz_str = psz_end;
    }
    return is_escaped;
}

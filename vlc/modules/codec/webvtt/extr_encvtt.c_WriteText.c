
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bo_t ;


 int bo_add_8 (int *,char) ;
 int bo_add_mem (int *,size_t,char const*) ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void WriteText( const char *psz, bo_t *box, char *c_last )
{


    while(*psz)
    {
        const char *p = strchr( psz, '\n' );
        if( p )
        {
            bo_add_mem( box, p - psz, psz );
            if( *c_last == '\n' )
                bo_add_8( box, '!' );
            bo_add_8( box, '\n' );
            *c_last = '\n';
            psz = p + 1;
        }
        else
        {
            size_t len = strlen(psz);
            bo_add_mem( box, len, psz );
            *c_last = (len > 0) ? psz[len - 1] : '\0';
            break;
        }
    }
}

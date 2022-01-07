
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {double member_0; scalar_t__ member_1; scalar_t__ unit; } ;
typedef TYPE_1__ ttml_length_t ;


 scalar_t__ TTML_UNIT_UNKNOWN ;
 int free (char*) ;
 char* strdup (char const*) ;
 char* strtok_r (char*,char*,char**) ;
 TYPE_1__ ttml_read_length (char*) ;

__attribute__((used)) static bool ttml_read_coords( const char *value, ttml_length_t *h, ttml_length_t *v )
{
    ttml_length_t vals[2] = { { 0.0, TTML_UNIT_UNKNOWN },
                              { 0.0, TTML_UNIT_UNKNOWN } };
    char *dup = strdup( value );
    char* psz_saveptr = ((void*)0);
    char* token = (dup) ? strtok_r( dup, " ", &psz_saveptr ) : ((void*)0);
    for(int i=0; i<2 && token != ((void*)0); i++)
    {
        vals[i] = ttml_read_length( token );
        token = strtok_r( ((void*)0), " ", &psz_saveptr );
    }
    free( dup );

    if( vals[0].unit != TTML_UNIT_UNKNOWN &&
        vals[1].unit != TTML_UNIT_UNKNOWN )
    {
        *h = vals[0];
        *v = vals[1];
        return 1;
    }
    return 0;
}

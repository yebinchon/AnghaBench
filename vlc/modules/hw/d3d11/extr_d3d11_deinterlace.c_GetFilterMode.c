
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_mode_t {char* psz_mode; } ;


 size_t ARRAY_SIZE (struct filter_mode_t const*) ;
 struct filter_mode_t const* filter_mode ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static const struct filter_mode_t *GetFilterMode(const char *mode)
{
    if ( mode == ((void*)0) || !strcmp( mode, "auto" ) )
        mode = "x";

    for (size_t i=0; i<ARRAY_SIZE(filter_mode); i++)
    {
        if( !strcmp( mode, filter_mode[i].psz_mode ) )
            return &filter_mode[i];
    }
    return ((void*)0);
}

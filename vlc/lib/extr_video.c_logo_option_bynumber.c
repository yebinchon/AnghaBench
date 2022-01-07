
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlogo_optlist ;
struct TYPE_3__ {char* member_0; int const member_1; } ;
typedef TYPE_1__ opt_t ;




 int libvlc_printerr (char*) ;

__attribute__((used)) static const opt_t *
logo_option_bynumber( unsigned option )
{
    static const opt_t vlogo_optlist[] =

    {
        { "logo", 0 },
        { "logo-file", 128 },
        { "logo-x", 129 },
        { "logo-y", 129 },
        { "logo-delay", 129 },
        { "logo-repeat", 129 },
        { "logo-opacity", 129 },
        { "logo-position", 129 },
    };
    enum { num_vlogo_opts = sizeof(vlogo_optlist) / sizeof(*vlogo_optlist) };

    const opt_t *r = option < num_vlogo_opts ? vlogo_optlist+option : ((void*)0);
    if( !r )
        libvlc_printerr( "Unknown logo option" );
    return r;
}

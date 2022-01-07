
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int optlist ;
struct TYPE_3__ {char* member_0; int const member_1; } ;
typedef TYPE_1__ opt_t ;



 int libvlc_printerr (char*) ;

__attribute__((used)) static const opt_t *
adjust_option_bynumber( unsigned option )
{
    static const opt_t optlist[] =
    {
        { "adjust", 0 },
        { "contrast", 128 },
        { "brightness", 128 },
        { "hue", 128 },
        { "saturation", 128 },
        { "gamma", 128 },
    };
    enum { num_opts = sizeof(optlist) / sizeof(*optlist) };

    const opt_t *r = option < num_opts ? optlist+option : ((void*)0);
    if( !r )
        libvlc_printerr( "Unknown adjust option" );
    return r;
}


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
marq_option_bynumber(unsigned option)
{
    static const opt_t optlist[] =
    {
        { "marq", 0 },
        { "marq-marquee", 128 },
        { "marq-color", 129 },
        { "marq-opacity", 129 },
        { "marq-position", 129 },
        { "marq-refresh", 129 },
        { "marq-size", 129 },
        { "marq-timeout", 129 },
        { "marq-x", 129 },
        { "marq-y", 129 },
    };
    enum { num_opts = sizeof(optlist) / sizeof(*optlist) };

    const opt_t *r = option < num_opts ? optlist+option : ((void*)0);
    if( !r )
        libvlc_printerr( "Unknown marquee option" );
    return r;
}

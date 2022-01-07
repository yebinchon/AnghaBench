
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int present; } ;
typedef TYPE_1__ xcb_query_extension_reply_t ;
typedef int xcb_query_extension_cookie_t ;
struct TYPE_6__ {int connection; } ;


 int free (TYPE_1__*) ;
 int strlen (char const*) ;
 TYPE_3__* xcb ;
 int xcb_query_extension (int ,int ,char const*) ;
 TYPE_1__* xcb_query_extension_reply (int ,int ,int *) ;

__attribute__((used)) static int x11_is_extension_present ( const char *extension )
{
    xcb_query_extension_cookie_t randr_cookie = xcb_query_extension ( xcb->connection, strlen ( extension ), extension );

    xcb_query_extension_reply_t *randr_reply = xcb_query_extension_reply ( xcb->connection, randr_cookie, ((void*)0) );

    int present = randr_reply->present;

    free ( randr_reply );

    return present;
}

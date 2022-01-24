#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const* psz_path; } ;
typedef  TYPE_1__ http_cookie_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char const*) ; 
 size_t FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,size_t) ; 

__attribute__((used)) static bool FUNC3( const http_cookie_t * cookie, const char *uripath )
{
    if (uripath == NULL )
        return false;
    else if ( FUNC0(cookie->psz_path, uripath) == 0 )
        return true;

    size_t path_len = FUNC1( uripath );
    size_t prefix_len = FUNC1( cookie->psz_path );
    return ( path_len > prefix_len ) &&
        ( FUNC2(uripath, cookie->psz_path, prefix_len) == 0 ) &&
        ( uripath[prefix_len - 1] == '/' || uripath[prefix_len] == '/' );
}
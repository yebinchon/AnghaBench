#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct transform_desc {scalar_t__* upgrade_code; scalar_t__* version_to; scalar_t__* product_code_to; scalar_t__* version_from; scalar_t__* product_code_from; } ;
typedef  char WCHAR ;
typedef  int UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct transform_desc*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,char const*,int) ; 
 void* FUNC2 (int) ; 
 struct transform_desc* FUNC3 (int) ; 
 char* FUNC4 (char const*,char) ; 

__attribute__((used)) static struct transform_desc *FUNC5( const WCHAR *str )
{
    struct transform_desc *ret;
    const WCHAR *p = str, *q;
    UINT len;

    if (!(ret = FUNC3( sizeof(*ret) ))) return NULL;

    q = FUNC4( p, '}' );
    if (*p != '{' || !q) goto error;

    len = q - p + 1;
    if (!(ret->product_code_from = FUNC2( (len + 1) * sizeof(WCHAR) ))) goto error;
    FUNC1( ret->product_code_from, p, len * sizeof(WCHAR) );
    ret->product_code_from[len] = 0;

    p = q + 1;
    if (!(q = FUNC4( p, ';' ))) goto error;
    len = q - p;
    if (!(ret->version_from = FUNC2( (len + 1) * sizeof(WCHAR) ))) goto error;
    FUNC1( ret->version_from, p, len * sizeof(WCHAR) );
    ret->version_from[len] = 0;

    p = q + 1;
    q = FUNC4( p, '}' );
    if (*p != '{' || !q) goto error;

    len = q - p + 1;
    if (!(ret->product_code_to = FUNC2( (len + 1) * sizeof(WCHAR) ))) goto error;
    FUNC1( ret->product_code_to, p, len * sizeof(WCHAR) );
    ret->product_code_to[len] = 0;

    p = q + 1;
    if (!(q = FUNC4( p, ';' ))) goto error;
    len = q - p;
    if (!(ret->version_to = FUNC2( (len + 1) * sizeof(WCHAR) ))) goto error;
    FUNC1( ret->version_to, p, len * sizeof(WCHAR) );
    ret->version_to[len] = 0;

    p = q + 1;
    q = FUNC4( p, '}' );
    if (*p != '{' || !q) goto error;

    len = q - p + 1;
    if (!(ret->upgrade_code = FUNC2( (len + 1) * sizeof(WCHAR) ))) goto error;
    FUNC1( ret->upgrade_code, p, len * sizeof(WCHAR) );
    ret->upgrade_code[len] = 0;

    return ret;

error:
    FUNC0( ret );
    return NULL;
}
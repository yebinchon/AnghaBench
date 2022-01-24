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
struct file {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*,char) ; 

__attribute__((used)) static WCHAR *FUNC7( const WCHAR *manifest, struct file *file )
{
    WCHAR *src;
    const WCHAR *p;
    int len;

    p = FUNC6( manifest, '\\' );
    if (!p) p = FUNC6( manifest, '/' );
    if (!p) return FUNC4( manifest );

    len = p - manifest + 1;
    if (!(src = FUNC1( FUNC0(), 0, (len + FUNC5( file->name ) + 1) * sizeof(WCHAR) )))
        return NULL;

    FUNC2( src, manifest, len * sizeof(WCHAR) );
    FUNC3( src + len, file->name );
    return src;
}
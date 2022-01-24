#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_11__ {int /*<<< orphan*/  package; } ;
struct TYPE_10__ {int len; } ;
struct TYPE_9__ {scalar_t__ Action; int /*<<< orphan*/  Directory; } ;
typedef  TYPE_1__ MSICOMPONENT ;
typedef  TYPE_2__ FORMSTR ;
typedef  TYPE_3__ FORMAT ;

/* Variables and functions */
 scalar_t__ INSTALLSTATE_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static WCHAR *FUNC9( FORMAT *format, FORMSTR *str, int *ret_len )
{
    WCHAR *key, *ret;
    MSICOMPONENT *comp;

    if (!(key = FUNC2( (str->len + 1) * sizeof(WCHAR) ))) return NULL;
    FUNC1(key, FUNC0(format, str), str->len + 1);

    if (!(comp = FUNC4( format->package, key )))
    {
        FUNC3( key );
        return NULL;
    }
    if (comp->Action == INSTALLSTATE_SOURCE)
        ret = FUNC6( format->package, comp->Directory, NULL );
    else
        ret = FUNC7( FUNC5( format->package, comp->Directory ) );

    if (ret) *ret_len = FUNC8( ret );
    else *ret_len = 0;
    FUNC3( key );
    return ret;
}
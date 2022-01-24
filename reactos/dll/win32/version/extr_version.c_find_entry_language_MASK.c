#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_2__ {int /*<<< orphan*/  CurrentLocale; } ;
typedef  int /*<<< orphan*/  IMAGE_RESOURCE_DIRECTORY ;
typedef  int DWORD ;

/* Variables and functions */
 int FILE_VER_GET_LOCALISED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LANG_ENGLISH ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUBLANG_DEFAULT ; 
 int /*<<< orphan*/  SUBLANG_NEUTRAL ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  const* FUNC7 (int /*<<< orphan*/  const*,void const*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const IMAGE_RESOURCE_DIRECTORY *FUNC9( const IMAGE_RESOURCE_DIRECTORY *dir,
                                                            const void *root, DWORD flags )
{
    const IMAGE_RESOURCE_DIRECTORY *ret;
    WORD list[9];
    int i, pos = 0;

    if (flags & FILE_VER_GET_LOCALISED)
    {
        /* cf. LdrFindResource_U */
        pos = FUNC8( list, pos, FUNC3( LANG_NEUTRAL, SUBLANG_NEUTRAL ) );
        pos = FUNC8( list, pos, FUNC2( FUNC4()->CurrentLocale ) );
        pos = FUNC8( list, pos, FUNC1() );
        pos = FUNC8( list, pos, FUNC3( FUNC5(FUNC1()), SUBLANG_NEUTRAL ));
        pos = FUNC8( list, pos, FUNC3( FUNC5(FUNC1()), SUBLANG_DEFAULT ));
        pos = FUNC8( list, pos, FUNC0() );
        pos = FUNC8( list, pos, FUNC3( FUNC5(FUNC0()), SUBLANG_NEUTRAL ));
        pos = FUNC8( list, pos, FUNC3( FUNC5(FUNC0()), SUBLANG_DEFAULT ));
        pos = FUNC8( list, pos, FUNC3( LANG_ENGLISH, SUBLANG_DEFAULT ) );
    }
    else
    {
        /* FIXME: resolve LN file here */
        pos = FUNC8( list, pos, FUNC3( LANG_ENGLISH, SUBLANG_DEFAULT ) );
    }

    for (i = 0; i < pos; i++) if ((ret = FUNC6( dir, list[i], root ))) return ret;
    return FUNC7( dir, root );
}
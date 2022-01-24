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
struct TYPE_2__ {int /*<<< orphan*/  revision; int /*<<< orphan*/  build; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct assembly_identity {char const* arch; char const* public_key; char const* language; char const* name; TYPE_1__ version; } ;
typedef  int /*<<< orphan*/  mskeyW ;
typedef  char WCHAR ;
typedef  int SIZE_T ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  version_formatW ; 

__attribute__((used)) static WCHAR *FUNC6(struct assembly_identity* ai)
{
    static const WCHAR undW[] = {'_',0};
    static const WCHAR noneW[] = {'n','o','n','e',0};
    static const WCHAR mskeyW[] = {'d','e','a','d','b','e','e','f',0};

    const WCHAR *arch = ai->arch ? ai->arch : noneW;
    const WCHAR *key = ai->public_key ? ai->public_key : noneW;
    const WCHAR *lang = ai->language ? ai->language : noneW;
    const WCHAR *name = ai->name ? ai->name : noneW;
    SIZE_T size = (FUNC5(arch) + 1 + FUNC5(name) + 1 + FUNC5(key) + 24 + 1 +
		    FUNC5(lang) + 1) * sizeof(WCHAR) + sizeof(mskeyW);
    WCHAR *ret;

    if (!(ret = FUNC0( FUNC1(), 0, size ))) return NULL;

    FUNC4( ret, arch );
    FUNC3( ret, undW );
    FUNC3( ret, name );
    FUNC3( ret, undW );
    FUNC3( ret, key );
    FUNC3( ret, undW );
    FUNC2( ret + FUNC5(ret), version_formatW,
              ai->version.major, ai->version.minor, ai->version.build, ai->version.revision );
    FUNC3( ret, undW );
    FUNC3( ret, lang );
    FUNC3( ret, undW );
    FUNC3( ret, mskeyW );
    return ret;
}
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
struct assembly_identity {char* name; char* arch; char* public_key; char* type; TYPE_1__ version; } ;
typedef  char WCHAR ;
typedef  int SIZE_T ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  version_formatW ; 

__attribute__((used)) static WCHAR *FUNC6( const struct assembly_identity *ai )
{
    static const WCHAR archW[] =
        {',','p','r','o','c','e','s','s','o','r','A','r','c','h','i','t','e','c','t','u','r','e','=',0};
    static const WCHAR public_keyW[] =
        {',','p','u','b','l','i','c','K','e','y','T','o','k','e','n','=',0};
    static const WCHAR typeW2[] =
        {',','t','y','p','e','=',0};
    static const WCHAR versionW2[] =
        {',','v','e','r','s','i','o','n','=',0};

    WCHAR version[64], *ret;
    SIZE_T size = 0;

    FUNC3( version, version_formatW,
              ai->version.major, ai->version.minor, ai->version.build, ai->version.revision );
    if (ai->name) size += FUNC5(ai->name) * sizeof(WCHAR);
    if (ai->arch) size += FUNC5(archW) + FUNC5(ai->arch) + 2;
    if (ai->public_key) size += FUNC5(public_keyW) + FUNC5(ai->public_key) + 2;
    if (ai->type) size += FUNC5(typeW2) + FUNC5(ai->type) + 2;
    size += FUNC5(versionW2) + FUNC5(version) + 2;

    if (!(ret = FUNC0( FUNC1(), 0, (size + 1) * sizeof(WCHAR) )))
        return NULL;

    if (ai->name) FUNC4( ret, ai->name );
    else *ret = 0;
    FUNC2( ret, archW, ai->arch );
    FUNC2( ret, public_keyW, ai->public_key );
    FUNC2( ret, typeW2, ai->type );
    FUNC2( ret, versionW2, version );
    return ret;
}
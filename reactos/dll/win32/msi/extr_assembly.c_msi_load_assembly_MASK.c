#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_22__ {char* attributes; void* installed; void** clr_version; struct TYPE_22__* display_name; struct TYPE_22__* application; struct TYPE_22__* manifest; struct TYPE_22__* feature; } ;
struct TYPE_21__ {int /*<<< orphan*/  Component; } ;
struct TYPE_20__ {int /*<<< orphan*/ * cache_net; int /*<<< orphan*/  cache_sxs; int /*<<< orphan*/  db; } ;
struct TYPE_19__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIRECORD ;
typedef  TYPE_2__ MSIPACKAGE ;
typedef  TYPE_3__ MSICOMPONENT ;
typedef  TYPE_4__ MSIASSEMBLY ;

/* Variables and functions */
 size_t CLR_VERSION_MAX ; 
 void* FALSE ; 
 char* FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (TYPE_4__*) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 TYPE_1__* FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC7 (size_t) ; 
 void* FUNC8 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 TYPE_4__* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 scalar_t__ msidbAssemblyAttributesWin32 ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 

MSIASSEMBLY *FUNC13( MSIPACKAGE *package, MSICOMPONENT *comp )
{
    MSIRECORD *rec;
    MSIASSEMBLY *a;

    if (!(rec = FUNC6( package, comp->Component ))) return NULL;
    if (!(a = FUNC9( sizeof(MSIASSEMBLY) )))
    {
        FUNC11( &rec->hdr );
        return NULL;
    }
    a->feature = FUNC12( FUNC1( rec, 2 ) );
    FUNC2("feature %s\n", FUNC4(a->feature));

    a->manifest = FUNC12( FUNC1( rec, 3 ) );
    FUNC2("manifest %s\n", FUNC4(a->manifest));

    a->application = FUNC12( FUNC1( rec, 4 ) );
    FUNC2("application %s\n", FUNC4(a->application));

    a->attributes = FUNC0( rec, 5 );
    FUNC2("attributes %u\n", a->attributes);

    if (!(a->display_name = FUNC5( package->db, comp->Component, a )))
    {
        FUNC3("can't get display name\n");
        FUNC11( &rec->hdr );
        FUNC10( a->feature );
        FUNC10( a->manifest );
        FUNC10( a->application );
        FUNC10( a );
        return NULL;
    }
    FUNC2("display name %s\n", FUNC4(a->display_name));

    if (a->application)
    {
        /* We can't check the manifest here because the target path may still change.
           So we assume that the assembly is not installed and lean on the InstallFiles
           action to determine which files need to be installed.
         */
        a->installed = FALSE;
    }
    else
    {
        if (a->attributes == msidbAssemblyAttributesWin32)
            a->installed = FUNC8( package->cache_sxs, a->display_name );
        else
        {
            UINT i;
            for (i = 0; i < CLR_VERSION_MAX; i++)
            {
                a->clr_version[i] = FUNC8( package->cache_net[i], a->display_name );
                if (a->clr_version[i])
                {
                    FUNC2("runtime version %s\n", FUNC4(FUNC7( i )));
                    a->installed = TRUE;
                    break;
                }
            }
        }
    }
    FUNC2("assembly is %s\n", a->installed ? "installed" : "not installed");
    FUNC11( &rec->hdr );
    return a;
}
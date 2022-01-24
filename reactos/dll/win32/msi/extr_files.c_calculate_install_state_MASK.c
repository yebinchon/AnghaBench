#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  msi_file_state ;
struct TYPE_22__ {int /*<<< orphan*/  dwFileVersionLS; int /*<<< orphan*/  dwFileVersionMS; } ;
typedef  TYPE_3__ WCHAR ;
typedef  TYPE_3__ VS_FIXEDFILEINFO ;
struct TYPE_24__ {scalar_t__ Action; TYPE_1__* assembly; int /*<<< orphan*/  Enabled; } ;
struct TYPE_21__ {scalar_t__ dwFileHashInfoSize; } ;
struct TYPE_23__ {TYPE_3__* File; TYPE_2__ hash; int /*<<< orphan*/  FileSize; int /*<<< orphan*/  TargetPath; TYPE_3__* Version; TYPE_6__* Component; } ;
struct TYPE_20__ {scalar_t__ installed; } ;
typedef  int /*<<< orphan*/  MSIPACKAGE ;
typedef  TYPE_5__ MSIFILE ;
typedef  TYPE_6__ MSICOMPONENT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ INSTALLSTATE_LOCAL ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*,TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*,TYPE_3__*) ; 
 scalar_t__ FUNC8 (TYPE_5__*) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_6__*) ; 
 int /*<<< orphan*/  msifs_hashmatch ; 
 int /*<<< orphan*/  msifs_missing ; 
 int /*<<< orphan*/  msifs_overwrite ; 
 int /*<<< orphan*/  msifs_present ; 
 int /*<<< orphan*/  msifs_skipped ; 

__attribute__((used)) static msi_file_state FUNC15( MSIPACKAGE *package, MSIFILE *file )
{
    MSICOMPONENT *comp = file->Component;
    VS_FIXEDFILEINFO *file_version;
    WCHAR *font_version;
    msi_file_state state;
    DWORD size;

    comp->Action = FUNC11( package, comp );
    if (!comp->Enabled || comp->Action != INSTALLSTATE_LOCAL || (comp->assembly && comp->assembly->installed))
    {
        FUNC3("skipping %s (not scheduled for install)\n", FUNC4(file->File));
        return msifs_skipped;
    }
    if (FUNC5( package, file ))
    {
        FUNC3("skipping %s (obsoleted by patch)\n", FUNC4(file->File));
        return msifs_skipped;
    }
    if ((FUNC14( comp ) && !comp->assembly->installed) ||
        FUNC0( file->TargetPath ) == INVALID_FILE_ATTRIBUTES)
    {
        FUNC3("installing %s (missing)\n", FUNC4(file->File));
        return msifs_missing;
    }
    if (file->Version)
    {
        if ((file_version = FUNC13( file->TargetPath )))
        {
            if (FUNC6( file_version, file->Version ) < 0)
            {
                FUNC3("overwriting %s (new version %s old version %u.%u.%u.%u)\n",
                      FUNC4(file->File), FUNC4(file->Version),
                      FUNC1(file_version->dwFileVersionMS), FUNC2(file_version->dwFileVersionMS),
                      FUNC1(file_version->dwFileVersionLS), FUNC2(file_version->dwFileVersionLS));
                state = msifs_overwrite;
            }
            else
            {
                FUNC3("keeping %s (new version %s old version %u.%u.%u.%u)\n",
                      FUNC4(file->File), FUNC4(file->Version),
                      FUNC1(file_version->dwFileVersionMS), FUNC2(file_version->dwFileVersionMS),
                      FUNC1(file_version->dwFileVersionLS), FUNC2(file_version->dwFileVersionLS));
                state = msifs_present;
            }
            FUNC10( file_version );
            return state;
        }
        else if ((font_version = FUNC9( file->TargetPath )))
        {
            if (FUNC7( font_version, file->Version ) < 0)
            {
                FUNC3("overwriting %s (new version %s old version %s)\n",
                      FUNC4(file->File), FUNC4(file->Version), FUNC4(font_version));
                state = msifs_overwrite;
            }
            else
            {
                FUNC3("keeping %s (new version %s old version %s)\n",
                      FUNC4(file->File), FUNC4(file->Version), FUNC4(font_version));
                state = msifs_present;
            }
            FUNC10( font_version );
            return state;
        }
    }
    if ((size = FUNC12( file->TargetPath )) != file->FileSize)
    {
        FUNC3("overwriting %s (old size %u new size %u)\n", FUNC4(file->File), size, file->FileSize);
        return msifs_overwrite;
    }
    if (file->hash.dwFileHashInfoSize)
    {
        if (FUNC8( file ))
        {
            FUNC3("keeping %s (hash match)\n", FUNC4(file->File));
            return msifs_hashmatch;
        }
        else
        {
            FUNC3("overwriting %s (hash mismatch)\n", FUNC4(file->File));
            return msifs_overwrite;
        }
    }
    /* assume present */
    FUNC3("keeping %s\n", FUNC4(file->File));
    return msifs_present;
}
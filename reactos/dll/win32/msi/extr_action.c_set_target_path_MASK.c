#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_11__ {int /*<<< orphan*/  Directory; TYPE_3__* assembly; } ;
struct TYPE_10__ {int /*<<< orphan*/  const* tempdir; } ;
struct TYPE_9__ {void* TargetPath; void* File; int /*<<< orphan*/  FileName; TYPE_6__* Component; } ;
struct TYPE_8__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ MSIPACKAGE ;
typedef  TYPE_2__ MSIFILE ;
typedef  TYPE_3__ MSIASSEMBLY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_6__*) ; 

__attribute__((used)) static void FUNC7( MSIPACKAGE *package, MSIFILE *file )
{
    FUNC4( file->TargetPath );
    if (FUNC6( file->Component ))
    {
        MSIASSEMBLY *assembly = file->Component->assembly;

        if (!assembly->tempdir) assembly->tempdir = FUNC1( package->db );
        file->TargetPath = FUNC3( 2, assembly->tempdir, file->FileName );
    }
    else
    {
        const WCHAR *dir = FUNC5( package, file->Component->Directory );
        file->TargetPath = FUNC3( 2, dir, file->FileName );
    }

    FUNC0("file %s resolves to %s\n", FUNC2(file->File), FUNC2(file->TargetPath));
}
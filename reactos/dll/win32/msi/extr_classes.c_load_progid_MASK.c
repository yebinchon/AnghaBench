#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_11__ {int /*<<< orphan*/  progids; } ;
struct TYPE_10__ {struct TYPE_10__* VersionInd; struct TYPE_10__* CurVer; struct TYPE_10__* Parent; void* IconPath; void* Description; int /*<<< orphan*/ * Class; void* ProgID; int /*<<< orphan*/  entry; } ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  TYPE_1__ MSIPROGID ;
typedef  TYPE_2__ MSIPACKAGE ;
typedef  void* LPWSTR ;
typedef  void* LPCWSTR ;
typedef  int /*<<< orphan*/  INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__*,void*) ; 
 TYPE_1__* FUNC8 (TYPE_2__*,void*) ; 
 void* FUNC9 (int) ; 
 TYPE_1__* FUNC10 (int) ; 
 void* FUNC11 (TYPE_2__*,void*) ; 
 void* FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (void*,char const*,void*,int /*<<< orphan*/ ) ; 
 int FUNC15 (void*) ; 

__attribute__((used)) static MSIPROGID *FUNC16( MSIPACKAGE* package, MSIRECORD *row )
{
    MSIPROGID *progid;
    LPCWSTR buffer;

    /* fill in the data */

    progid = FUNC10( sizeof(MSIPROGID) );
    if (!progid)
        return NULL;

    FUNC6( &package->progids, &progid->entry );

    progid->ProgID = FUNC12(row,1);
    FUNC4("loading progid %s\n",FUNC5(progid->ProgID));

    buffer = FUNC2(row,2);
    progid->Parent = FUNC8(package,buffer);
    if (progid->Parent == NULL && buffer)
        FUNC0("Unknown parent ProgID %s\n",FUNC5(buffer));

    buffer = FUNC2(row,3);
    progid->Class = FUNC7(package,buffer);
    if (progid->Class == NULL && buffer)
        FUNC0("Unknown class %s\n",FUNC5(buffer));

    progid->Description = FUNC12(row,4);

    if (!FUNC3(row,6))
    {
        INT icon_index = FUNC1(row,6); 
        LPCWSTR FileName = FUNC2(row,5);
        LPWSTR FilePath;
        static const WCHAR fmt[] = {'%','s',',','%','i',0};

        FilePath = FUNC11(package, FileName);
       
        progid->IconPath = FUNC9( (FUNC15(FilePath)+10)* sizeof(WCHAR) );

        FUNC14(progid->IconPath,fmt,FilePath,icon_index);

        FUNC13(FilePath);
    }
    else
    {
        buffer = FUNC2(row,5);
        if (buffer)
            progid->IconPath = FUNC11(package, buffer);
    }

    progid->CurVer = NULL;
    progid->VersionInd = NULL;

    /* if we have a parent then we may be that parents CurVer */
    if (progid->Parent && progid->Parent != progid)
    {
        MSIPROGID *parent = progid->Parent;

        while (parent->Parent && parent->Parent != parent)
            parent = parent->Parent;

        /* FIXME: need to determine if we are really the CurVer */

        progid->CurVer = parent;
        parent->VersionInd = progid;
    }
    
    return progid;
}
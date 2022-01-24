#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_13__ {int /*<<< orphan*/  action; void* Attributes; int /*<<< orphan*/  Feature; int /*<<< orphan*/  Argument; void* DefInprocHandler32; void* DefInprocHandler; void* IconPath; void* FileTypeMask; int /*<<< orphan*/  AppID; void* Description; void* ProgIDText; int /*<<< orphan*/  ProgID; int /*<<< orphan*/  Component; void* Context; void* clsid; int /*<<< orphan*/  entry; } ;
struct TYPE_12__ {int /*<<< orphan*/  classes; } ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  TYPE_1__ MSIPACKAGE ;
typedef  TYPE_2__ MSICLASS ;
typedef  void* LPWSTR ;
typedef  scalar_t__ LPCWSTR ;
typedef  void* INT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  INSTALLSTATE_UNKNOWN ; 
 int MSI_NULL_INTEGER ; 
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,void*) ; 
 void* FUNC9 (int) ; 
 TYPE_2__* FUNC10 (int) ; 
 void* FUNC11 (TYPE_1__*,scalar_t__) ; 
 void* FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 
 int /*<<< orphan*/  FUNC17 (void*,char const*,void*,void*) ; 
 void* FUNC18 (char const*) ; 
 int FUNC19 (void*) ; 

__attribute__((used)) static MSICLASS *FUNC20( MSIPACKAGE* package, MSIRECORD *row )
{
    MSICLASS *cls;
    DWORD i;
    LPCWSTR buffer;

    /* fill in the data */

    cls = FUNC10( sizeof(MSICLASS) );
    if (!cls)
        return NULL;

    FUNC6( &package->classes, &cls->entry );

    cls->clsid = FUNC12( row, 1 );
    FUNC3("loading class %s\n",FUNC4(cls->clsid));
    cls->Context = FUNC12( row, 2 );
    buffer = FUNC1(row,3);
    cls->Component = FUNC14( package, buffer );

    cls->ProgIDText = FUNC12(row,4);
    cls->ProgID = FUNC8(package, cls->ProgIDText);

    cls->Description = FUNC12(row,5);

    buffer = FUNC1(row,6);
    if (buffer)
        cls->AppID = FUNC7(package, buffer);

    cls->FileTypeMask = FUNC12(row,7);

    if (!FUNC2(row,9))
    {

        INT icon_index = FUNC0(row,9); 
        LPCWSTR FileName = FUNC1(row,8);
        LPWSTR FilePath;
        static const WCHAR fmt[] = {'%','s',',','%','i',0};

        FilePath = FUNC11(package, FileName);
       
        cls->IconPath = FUNC9( (FUNC19(FilePath)+5)* sizeof(WCHAR) );

        FUNC17(cls->IconPath,fmt,FilePath,icon_index);

        FUNC13(FilePath);
    }
    else
    {
        buffer = FUNC1(row,8);
        if (buffer)
            cls->IconPath = FUNC11(package, buffer);
    }

    if (!FUNC2(row,10))
    {
        i = FUNC0(row,10);
        if (i != MSI_NULL_INTEGER && i > 0 &&  i < 4)
        {
            static const WCHAR ole2[] = {'o','l','e','2','.','d','l','l',0};
            static const WCHAR ole32[] = {'o','l','e','3','2','.','d','l','l',0};

            switch(i)
            {
                case 1:
                    cls->DefInprocHandler = FUNC18(ole2);
                    break;
                case 2:
                    cls->DefInprocHandler32 = FUNC18(ole32);
                    break;
                case 3:
                    cls->DefInprocHandler = FUNC18(ole2);
                    cls->DefInprocHandler32 = FUNC18(ole32);
                    break;
            }
        }
        else
        {
            cls->DefInprocHandler32 = FUNC12( row, 10 );
            FUNC16( cls->DefInprocHandler32 );
        }
    }
    buffer = FUNC1(row,11);
    FUNC5(package,buffer,&cls->Argument);

    buffer = FUNC1(row,12);
    cls->Feature = FUNC15(package, buffer);

    cls->Attributes = FUNC0(row,13);
    cls->action = INSTALLSTATE_UNKNOWN;
    return cls;
}
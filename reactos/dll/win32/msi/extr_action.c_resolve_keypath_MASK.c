#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  int UINT ;
struct TYPE_17__ {int Attributes; int /*<<< orphan*/  KeyPath; int /*<<< orphan*/  Directory; } ;
struct TYPE_16__ {int /*<<< orphan*/  TargetPath; } ;
struct TYPE_15__ {int /*<<< orphan*/  db; } ;
struct TYPE_14__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIRECORD ;
typedef  TYPE_2__ MSIPACKAGE ;
typedef  TYPE_3__ MSIFILE ;
typedef  TYPE_4__ MSICOMPONENT ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int msidbComponentAttributesODBCDataSource ; 
 int msidbComponentAttributesRegistryKeyPath ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static LPWSTR FUNC13( MSIPACKAGE* package, MSICOMPONENT *cmp )
{

    if (!cmp->KeyPath)
        return FUNC11( FUNC8( package, cmp->Directory ) );

    if (cmp->Attributes & msidbComponentAttributesRegistryKeyPath)
    {
        static const WCHAR query[] = {
            'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
            '`','R','e','g','i','s','t','r','y','`',' ','W','H','E','R','E',' ',
            '`','R','e','g','i','s','t','r','y','`',' ','=',' ' ,'\'','%','s','\'',0};
        static const WCHAR fmt[] = {'%','0','2','i',':','\\','%','s','\\',0};
        static const WCHAR fmt2[]= {'%','0','2','i',':','\\','%','s','\\','%','s',0};
        MSIRECORD *row;
        UINT root, len;
        LPWSTR deformated, buffer, deformated_name;
        LPCWSTR key, name;

        row = FUNC1(package->db, query, cmp->KeyPath);
        if (!row)
            return NULL;

        root = FUNC2(row,2);
        key = FUNC3(row, 3);
        name = FUNC3(row, 4);
        FUNC4(package, key , &deformated);
        FUNC4(package, name, &deformated_name);

        len = FUNC12(deformated) + 6;
        if (deformated_name)
            len+=FUNC12(deformated_name);

        buffer = FUNC5( len *sizeof(WCHAR));

        if (deformated_name)
            FUNC10(buffer,fmt2,root,deformated,deformated_name);
        else
            FUNC10(buffer,fmt,root,deformated);

        FUNC6(deformated);
        FUNC6(deformated_name);
        FUNC9(&row->hdr);

        return buffer;
    }
    else if (cmp->Attributes & msidbComponentAttributesODBCDataSource)
    {
        FUNC0("UNIMPLEMENTED keypath as ODBC Source\n");
        return NULL;
    }
    else
    {
        MSIFILE *file = FUNC7( package, cmp->KeyPath );

        if (file)
            return FUNC11( file->TargetPath );
    }
    return NULL;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_14__ {int /*<<< orphan*/  db; } ;
struct TYPE_13__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_12__ {int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ MSISIGNATURE ;
typedef  TYPE_2__ MSIRECORD ;
typedef  TYPE_3__ MSIPACKAGE ;
typedef  int /*<<< orphan*/ * LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int MSI_NULL_INTEGER ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (char*,int) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
#define  msidbLocatorTypeDirectory 130 
#define  msidbLocatorTypeFileName 129 
#define  msidbLocatorTypeRawValue 128 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC11(MSIPACKAGE *package, LPWSTR *appValue,
 MSISIGNATURE *sig)
{
    static const WCHAR query[] =  {
        's','e','l','e','c','t',' ','*',' ',
        'f','r','o','m',' ',
        'I','n','i','L','o','c','a','t','o','r',' ',
        'w','h','e','r','e',' ',
        'S','i','g','n','a','t','u','r','e','_',' ','=',' ','\'','%','s','\'',0};
    MSIRECORD *row;
    LPWSTR fileName, section, key;
    int field, type;
    WCHAR buf[MAX_PATH];

    FUNC4("%s\n", FUNC6(sig->Name));

    *appValue = NULL;

    row = FUNC2( package->db, query, sig->Name );
    if (!row)
    {
        FUNC4("failed to query IniLocator for %s\n", FUNC6(sig->Name));
        return ERROR_SUCCESS;
    }

    fileName = FUNC8(row, 2);
    section = FUNC8(row, 3);
    key = FUNC8(row, 4);
    field = FUNC3(row, 5);
    type = FUNC3(row, 6);
    if (field == MSI_NULL_INTEGER)
        field = 0;
    if (type == MSI_NULL_INTEGER)
        type = 0;

    FUNC1(section, key, NULL, buf, MAX_PATH, fileName);
    if (buf[0])
    {
        switch (type & 0x0f)
        {
        case msidbLocatorTypeDirectory:
            FUNC0(package, sig, buf, 0, appValue);
            break;
        case msidbLocatorTypeFileName:
            *appValue = FUNC5(buf, sig);
            break;
        case msidbLocatorTypeRawValue:
            *appValue = FUNC7(buf, field);
            break;
        }
    }

    FUNC9(fileName);
    FUNC9(section);
    FUNC9(key);

    FUNC10(&row->hdr);

    return ERROR_SUCCESS;
}
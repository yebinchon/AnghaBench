#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_13__ {int /*<<< orphan*/  db; } ;
struct TYPE_12__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_11__ {scalar_t__ MinVersionMS; scalar_t__ MinVersionLS; scalar_t__ MaxVersionMS; scalar_t__ MaxVersionLS; scalar_t__ MinSize; scalar_t__ MaxSize; void* Languages; void* File; int /*<<< orphan*/  MaxTime; int /*<<< orphan*/  MinTime; void* Name; } ;
typedef  TYPE_1__ MSISIGNATURE ;
typedef  TYPE_2__ MSIRECORD ;
typedef  TYPE_3__ MSIPACKAGE ;
typedef  void* LPWSTR ;
typedef  void* LPCWSTR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ MSI_NULL_INTEGER ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,char const*,void*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_3__*,...) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC9 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (void*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 void* FUNC13 (void*,char) ; 
 int FUNC14 (void*) ; 

__attribute__((used)) static UINT FUNC15(MSIPACKAGE *package, MSISIGNATURE *sig, LPCWSTR name)
{
    static const WCHAR query[] = {
        's','e','l','e','c','t',' ','*',' ',
        'f','r','o','m',' ',
        'S','i','g','n','a','t','u','r','e',' ',
        'w','h','e','r','e',' ','S','i','g','n','a','t','u','r','e',' ','=',' ',
        '\'','%','s','\'',0};
    LPWSTR minVersion, maxVersion, p;
    MSIRECORD *row;
    DWORD time;

    FUNC5("package %p, sig %p\n", package, sig);

    FUNC8(sig, 0, sizeof(*sig));
    sig->Name = name;
    row = FUNC3( package->db, query, name );
    if (!row)
    {
        FUNC5("failed to query signature for %s\n", FUNC6(name));
        return ERROR_SUCCESS;
    }

    /* get properties */
    sig->File = FUNC9(row,2);
    if ((p = FUNC13(sig->File, '|')))
    {
        p++;
        FUNC7(sig->File, p, (FUNC14(p) + 1) * sizeof(WCHAR));
    }

    minVersion = FUNC9(row,3);
    if (minVersion)
    {
        FUNC11( minVersion, &sig->MinVersionMS, &sig->MinVersionLS );
        FUNC10( minVersion );
    }
    maxVersion = FUNC9(row,4);
    if (maxVersion)
    {
        FUNC11( maxVersion, &sig->MaxVersionMS, &sig->MaxVersionLS );
        FUNC10( maxVersion );
    }
    sig->MinSize = FUNC4(row,5);
    if (sig->MinSize == MSI_NULL_INTEGER)
        sig->MinSize = 0;
    sig->MaxSize = FUNC4(row,6);
    if (sig->MaxSize == MSI_NULL_INTEGER)
        sig->MaxSize = 0;
    sig->Languages = FUNC9(row,9);
    time = FUNC4(row,7);
    if (time != MSI_NULL_INTEGER)
        FUNC0(FUNC1(time), FUNC2(time), &sig->MinTime);
    time = FUNC4(row,8);
    if (time != MSI_NULL_INTEGER)
        FUNC0(FUNC1(time), FUNC2(time), &sig->MaxTime);

    FUNC5("Found file name %s for Signature_ %s;\n",
          FUNC6(sig->File), FUNC6(name));
    FUNC5("MinVersion is %d.%d.%d.%d\n", FUNC1(sig->MinVersionMS),
          FUNC2(sig->MinVersionMS), FUNC1(sig->MinVersionLS),
          FUNC2(sig->MinVersionLS));
    FUNC5("MaxVersion is %d.%d.%d.%d\n", FUNC1(sig->MaxVersionMS),
          FUNC2(sig->MaxVersionMS), FUNC1(sig->MaxVersionLS),
          FUNC2(sig->MaxVersionLS));
    FUNC5("MinSize is %d, MaxSize is %d;\n", sig->MinSize, sig->MaxSize);
    FUNC5("Languages is %s\n", FUNC6(sig->Languages));

    FUNC12( &row->hdr );

    return ERROR_SUCCESS;
}
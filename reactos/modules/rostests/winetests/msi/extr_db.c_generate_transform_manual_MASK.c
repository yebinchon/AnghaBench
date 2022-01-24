#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_7__ {size_t size; int /*<<< orphan*/  data; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int member_0; int member_7; int /*<<< orphan*/  member_6; int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_6__ {int member_0; TYPE_1__ member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  scalar_t__ HRESULT ;
typedef  size_t DWORD ;
typedef  TYPE_2__ CLSID ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 size_t NUM_TRANSFORM_TABLES ; 
 size_t STGM_CREATE ; 
 size_t STGM_DIRECT ; 
 size_t STGM_READWRITE ; 
 size_t STGM_SHARE_EXCLUSIVE ; 
 size_t STGM_WRITE ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,size_t const,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  mstfile ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 TYPE_3__* table_transform_data ; 

__attribute__((used)) static void FUNC9(void)
{
    IStorage *stg = NULL;
    IStream *stm;
    WCHAR name[0x20];
    HRESULT r;
    DWORD i, count;
    const DWORD mode = STGM_CREATE|STGM_READWRITE|STGM_DIRECT|STGM_SHARE_EXCLUSIVE;

    const CLSID CLSID_MsiTransform = { 0xc1082,0,0,{0xc0,0,0,0,0,0,0,0x46}};

    FUNC6(CP_ACP, 0, mstfile, -1, name, 0x20);

    r = FUNC7(name, mode, 0, &stg);
    FUNC8(r == S_OK, "failed to create storage\n");
    if (!stg)
        return;

    r = FUNC3( stg, &CLSID_MsiTransform );
    FUNC8(r == S_OK, "failed to set storage type\n");

    for (i=0; i<NUM_TRANSFORM_TABLES; i++)
    {
        r = FUNC1( stg, table_transform_data[i].name,
                            STGM_WRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stm );
        if (FUNC0(r))
        {
            FUNC8(0, "failed to create stream %08x\n", r);
            continue;
        }

        r = FUNC5( stm, table_transform_data[i].data,
                          table_transform_data[i].size, &count );
        if (FUNC0(r) || count != table_transform_data[i].size)
            FUNC8(0, "failed to write stream\n");
        FUNC4(stm);
    }

    FUNC2(stg);
}
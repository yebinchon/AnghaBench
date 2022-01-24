#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ULONG ;
struct TYPE_5__ {size_t size; int /*<<< orphan*/ * data; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  pwcsName; } ;
typedef  TYPE_1__ STATSTG ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  int /*<<< orphan*/  IEnumSTATSTG ;
typedef  size_t HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int,TYPE_1__*,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int STGM_READ ; 
 int STGM_SHARE_EXCLUSIVE ; 
 size_t S_OK ; 
 scalar_t__ TRUE ; 
 TYPE_2__* database_table_data ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char,int) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 

__attribute__((used)) static void FUNC12(IStorage *stg)
{
    IEnumSTATSTG *stgenum = NULL;
    IStream *stm;
    HRESULT hr;
    STATSTG stat;
    ULONG n, count;
    BYTE data[MAX_PATH];
    BYTE check[MAX_PATH];
    DWORD sz;

    FUNC10(check, 'a', MAX_PATH);

    hr = FUNC4(stg, 0, NULL, 0, &stgenum);
    FUNC11(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    n = 0;
    while(TRUE)
    {
        count = 0;
        hr = FUNC2(stgenum, 1, &stat, &count);
        if(FUNC1(hr) || !count)
            break;

        FUNC11(!FUNC8(stat.pwcsName, database_table_data[n].name),
           "Expected table %d name to match\n", n);

        stm = NULL;
        hr = FUNC5(stg, stat.pwcsName, NULL,
                                 STGM_READ | STGM_SHARE_EXCLUSIVE, 0, &stm);
        FUNC11(hr == S_OK, "Expected S_OK, got %08x\n", hr);
        FUNC11(stm != NULL, "Expected non-NULL stream\n");

        FUNC0(stat.pwcsName);

        sz = MAX_PATH;
        FUNC10(data, 'a', MAX_PATH);
        hr = FUNC6(stm, data, sz, &count);
        FUNC11(hr == S_OK, "Expected S_OK, got %08x\n", hr);

        FUNC11(count == database_table_data[n].size,
           "Expected %d, got %d\n", database_table_data[n].size, count);

        if (!database_table_data[n].size)
            FUNC11(!FUNC9(data, check, MAX_PATH), "data should not be changed\n");
        else
            FUNC11(!FUNC9(data, database_table_data[n].data, database_table_data[n].size),
               "Expected table %d data to match\n", n);

        FUNC7(stm);
        n++;
    }

    FUNC11(n == 3, "Expected 3, got %d\n", n);

    FUNC3(stgenum);
}
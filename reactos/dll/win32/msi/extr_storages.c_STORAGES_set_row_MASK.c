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
struct tagMSIVIEW {int dummy; } ;
typedef  scalar_t__ UINT ;
struct TYPE_5__ {scalar_t__ num_rows; int /*<<< orphan*/ * storages; TYPE_1__* db; } ;
struct TYPE_4__ {int /*<<< orphan*/  storage; } ;
typedef  TYPE_2__ MSISTORAGESVIEW ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ ERROR_FUNCTION_FAILED ; 
 scalar_t__ ERROR_OUTOFMEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int STGM_SHARE_EXCLUSIVE ; 
 int STGM_WRITE ; 
 int /*<<< orphan*/  FUNC7 (char*,struct tagMSIVIEW*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static UINT FUNC12(struct tagMSIVIEW *view, UINT row, MSIRECORD *rec, UINT mask)
{
    MSISTORAGESVIEW *sv = (MSISTORAGESVIEW *)view;
    IStorage *stg, *substg = NULL;
    IStream *stm;
    LPWSTR name = NULL;
    HRESULT hr;
    UINT r = ERROR_FUNCTION_FAILED;

    FUNC7("(%p, %p)\n", view, rec);

    if (row > sv->num_rows)
        return ERROR_FUNCTION_FAILED;

    r = FUNC5(rec, 2, &stm);
    if (r != ERROR_SUCCESS)
        return r;

    r = FUNC11(stm, &stg);
    if (r != ERROR_SUCCESS)
    {
        FUNC4(stm);
        return r;
    }

    name = FUNC10(FUNC6(rec, 1));
    if (!name)
    {
        r = ERROR_OUTOFMEMORY;
        goto done;
    }

    hr = FUNC2(sv->db->storage, name,
                                STGM_WRITE | STGM_SHARE_EXCLUSIVE,
                                0, 0, &substg);
    if (FUNC0(hr))
    {
        r = ERROR_FUNCTION_FAILED;
        goto done;
    }

    hr = FUNC1(stg, 0, NULL, NULL, substg);
    if (FUNC0(hr))
    {
        r = ERROR_FUNCTION_FAILED;
        goto done;
    }

    sv->storages[row] = FUNC8(sv, name, stg);
    if (!sv->storages[row])
        r = ERROR_FUNCTION_FAILED;

done:
    FUNC9(name);

    if (substg) FUNC3(substg);
    FUNC3(stg);
    FUNC4(stm);

    return r;
}
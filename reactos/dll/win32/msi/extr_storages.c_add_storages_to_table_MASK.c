#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_14__ {int max_storages; TYPE_2__** storages; TYPE_1__* db; } ;
struct TYPE_13__ {scalar_t__ type; int /*<<< orphan*/  pwcsName; } ;
struct TYPE_12__ {int /*<<< orphan*/  storage; } ;
struct TYPE_11__ {int /*<<< orphan*/  storage; } ;
typedef  TYPE_2__ STORAGE ;
typedef  TYPE_3__ STATSTG ;
typedef  TYPE_4__ MSISTORAGESVIEW ;
typedef  int INT ;
typedef  int /*<<< orphan*/  IEnumSTATSTG ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,TYPE_3__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int STGM_READ ; 
 int STGM_SHARE_EXCLUSIVE ; 
 scalar_t__ STGTY_STORAGE ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 TYPE_2__* FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_2__** FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int) ; 

__attribute__((used)) static INT FUNC11(MSISTORAGESVIEW *sv)
{
    STORAGE *storage = NULL;
    IEnumSTATSTG *stgenum = NULL;
    STATSTG stat;
    HRESULT hr;
    UINT count = 0, size;

    hr = FUNC4(sv->db->storage, 0, NULL, 0, &stgenum);
    if (FUNC1(hr))
        return -1;

    sv->max_storages = 1;
    sv->storages = FUNC9(sizeof(STORAGE *));
    if (!sv->storages)
        return -1;

    while (TRUE)
    {
        size = 0;
        hr = FUNC2(stgenum, 1, &stat, &size);
        if (FUNC1(hr) || !size)
            break;

        if (stat.type != STGTY_STORAGE)
        {
            FUNC0(stat.pwcsName);
            continue;
        }

        FUNC6("enumerated storage %s\n", FUNC8(stat.pwcsName));

        storage = FUNC7(sv, stat.pwcsName, NULL);
        if (!storage)
        {
            count = -1;
            FUNC0(stat.pwcsName);
            break;
        }

        FUNC5(sv->db->storage, stat.pwcsName, NULL,
                             STGM_READ | STGM_SHARE_EXCLUSIVE, NULL, 0,
                             &storage->storage);
        FUNC0(stat.pwcsName);

        if (!FUNC10(sv, ++count))
        {
            count = -1;
            break;
        }

        sv->storages[count - 1] = storage;
    }

    FUNC3(stgenum);
    return count;
}
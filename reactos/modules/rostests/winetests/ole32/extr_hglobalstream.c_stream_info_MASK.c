#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stat ;
struct TYPE_10__ {scalar_t__ HighPart; int LowPart; } ;
typedef  TYPE_2__ ULARGE_INTEGER ;
struct TYPE_12__ {scalar_t__ QuadPart; } ;
struct TYPE_9__ {scalar_t__ HighPart; int LowPart; } ;
struct TYPE_11__ {scalar_t__ type; scalar_t__ pwcsName; TYPE_1__ cbSize; int /*<<< orphan*/  clsid; } ;
typedef  TYPE_3__ STATSTG ;
typedef  TYPE_4__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  IStream ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ HGLOBAL ;

/* Variables and functions */
 int /*<<< orphan*/  GUID_NULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_4__,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATFLAG_DEFAULT ; 
 scalar_t__ STGTY_STREAM ; 
 int /*<<< orphan*/  STREAM_SEEK_CUR ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(IStream *stream, HGLOBAL *hmem, int *size, int *pos)
{
    HRESULT hr;
    STATSTG stat;
    LARGE_INTEGER offset;
    ULARGE_INTEGER newpos;

    *hmem = 0;
    *size = *pos = -1;

    hr = FUNC0(stream, hmem);
    FUNC5(hr == S_OK, "unexpected %#x\n", hr);

    FUNC4(&stat, 0x55, sizeof(stat));
    hr = FUNC2(stream, &stat, STATFLAG_DEFAULT);
    FUNC5(hr == S_OK, "unexpected %#x\n", hr);
    FUNC5(stat.type == STGTY_STREAM, "unexpected %#x\n", stat.type);
    FUNC5(!stat.pwcsName, "unexpected %p\n", stat.pwcsName);
    FUNC5(FUNC3(&stat.clsid, &GUID_NULL), "unexpected %s\n", FUNC6(&stat.clsid));
    FUNC5(!stat.cbSize.HighPart, "unexpected %#x\n", stat.cbSize.HighPart);
    *size = stat.cbSize.LowPart;

    offset.QuadPart = 0;
    hr = FUNC1(stream, offset, STREAM_SEEK_CUR, &newpos);
    FUNC5(hr == S_OK, "unexpected %#x\n", hr);
    FUNC5(!newpos.HighPart, "unexpected %#x\n", newpos.HighPart);
    *pos = newpos.LowPart;
}
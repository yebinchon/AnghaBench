#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int version; int flags; int link_update_opt; int res; int moniker_size; } ;
typedef  TYPE_2__ ole_stream_header_t ;
typedef  int /*<<< orphan*/  header ;
typedef  int WCHAR ;
typedef  int ULONG ;
struct TYPE_6__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;
struct TYPE_8__ {int member_0; int member_1; int member_2; TYPE_1__ member_3; } ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  int /*<<< orphan*/  IPersistStorage ;
typedef  int /*<<< orphan*/  IOleObject ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_3__ CLSID ;

/* Variables and functions */
 int /*<<< orphan*/  IID_IOleObject ; 
 int /*<<< orphan*/  IID_IPersistStorage ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_3__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int STGM_READ ; 
 int STGM_SHARE_EXCLUSIVE ; 
 scalar_t__ STG_E_FILENOTFOUND ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int) ; 

__attribute__((used)) static void FUNC11(void)
{
    HRESULT hr;
    const CLSID non_existent_class = {0xa5f1772f, 0x3772, 0x490f, {0x9e, 0xc6, 0x77, 0x13, 0xe8, 0xb3, 0x4b, 0x5d}};
    IOleObject *ole_obj;
    IPersistStorage *persist;
    IStorage *stg;
    IStream *stm;
    static const WCHAR olestream[] = {1,'O','l','e',0};
    ULONG read;
    ole_stream_header_t header;

    hr = FUNC9(&stg);
    FUNC10(hr == S_OK, "got %08x\n", hr);

    hr = FUNC4(stg, olestream, NULL, STGM_SHARE_EXCLUSIVE | STGM_READ, 0, &stm);
    FUNC10(hr == STG_E_FILENOTFOUND, "got %08x\n", hr);

    hr = FUNC8(&non_existent_class, 0, &IID_IOleObject, (void**)&ole_obj);
    FUNC10(hr == S_OK, "got %08x\n", hr);

    hr = FUNC0(ole_obj, &IID_IPersistStorage, (void**)&persist);
    FUNC10(hr == S_OK, "got %08x\n", hr);

    hr = FUNC2(persist, stg);
    FUNC10(hr == S_OK, "got %08x\n", hr);

    hr = FUNC4(stg, olestream, NULL, STGM_SHARE_EXCLUSIVE | STGM_READ, 0, &stm);
    FUNC10(hr == S_OK, "got %08x\n", hr);
    hr = FUNC6(stm, &header, sizeof(header), &read);
    FUNC10(hr == S_OK, "got %08x\n", hr);
    FUNC10(read == sizeof(header), "read %d\n", read);
    FUNC10(header.version == 0x02000001, "got version %08x\n", header.version);
    FUNC10(header.flags == 0x0, "got flags %08x\n", header.flags);
    FUNC10(header.link_update_opt == 0x0, "got link update option %08x\n", header.link_update_opt);
    FUNC10(header.res == 0x0, "got reserved %08x\n", header.res);
    FUNC10(header.moniker_size == 0x0, "got moniker size %08x\n", header.moniker_size);

    FUNC7(stm);

    FUNC3(persist);
    FUNC1(ole_obj);

    FUNC5(stg);
}
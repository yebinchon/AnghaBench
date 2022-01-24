#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vlc_va_t ;
struct TYPE_9__ {int /*<<< orphan*/  d3ddec; } ;
typedef  TYPE_2__ vlc_va_sys_t ;
struct TYPE_10__ {unsigned int count; int /*<<< orphan*/ * list; int /*<<< orphan*/  (* pf_release ) (TYPE_3__*) ;} ;
typedef  TYPE_3__ input_list_t ;
typedef  unsigned int UINT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/ * FUNC4 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(vlc_va_t *va, input_list_t *p_list)
{
    vlc_va_sys_t *sys = va->sys;
    HRESULT hr;

    UINT input_count = FUNC2(sys->d3ddec);

    p_list->count = input_count;
    p_list->list = FUNC4(input_count, sizeof(*p_list->list));
    if (FUNC6(p_list->list == NULL)) {
        return VLC_ENOMEM;
    }
    p_list->pf_release = ReleaseInputList;

    for (unsigned i = 0; i < input_count; i++) {
        hr = FUNC1(sys->d3ddec, i, &p_list->list[i]);
        if (FUNC0(hr))
        {
            FUNC5(va, "GetVideoDecoderProfile %d failed. (hr=0x%lX)", i, hr);
            FUNC3(p_list);
            return VLC_EGENERIC;
        }
    }

    return VLC_SUCCESS;
}
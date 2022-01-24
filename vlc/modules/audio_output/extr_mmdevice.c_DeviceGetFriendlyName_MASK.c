#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  pwszVal; } ;
typedef  TYPE_1__ PROPVARIANT ;
typedef  int /*<<< orphan*/  IPropertyStore ;
typedef  int /*<<< orphan*/  IMMDevice ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PKEY_Device_FriendlyName ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  STGM_READ ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC8(IMMDevice *dev)
{
    IPropertyStore *props;
    PROPVARIANT v;
    HRESULT hr;

    hr = FUNC2(dev, STGM_READ, &props);
    if (FUNC0(hr))
        return NULL;

    char *name = NULL;
    FUNC6(&v);
    hr = FUNC3(props, &PKEY_Device_FriendlyName, &v);
    if (FUNC7(hr))
    {
        name = FUNC1(v.pwszVal);
        FUNC5(&v);
    }

    FUNC4(props);

    return name;
}
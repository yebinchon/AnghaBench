#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  port ;
typedef  int /*<<< orphan*/  mask ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  const WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/ ** ChannelMap; } ;
typedef  TYPE_1__ MIDIMAPDATA ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*,void*,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,void*,int*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * midiOutPorts ; 

__attribute__((used)) static BOOL	FUNC8(MIDIMAPDATA* mom, const WCHAR* scheme)
{
    HKEY	hSchemesKey, hKey, hPortKey;
    unsigned	i, idx, dev;
    WCHAR       buffer[256], port[256];
    DWORD	type, size, mask;

    for (i = 0; i < 16; i++)	mom->ChannelMap[i] = NULL;

    if (FUNC4(HKEY_LOCAL_MACHINE,
		    "System\\CurrentControlSet\\Control\\MediaProperties\\PrivateProperties\\Midi\\Schemes",
		    &hSchemesKey))
    {
	return FALSE;
    }
    if (FUNC5(hSchemesKey, scheme, &hKey))
    {
	FUNC2(hSchemesKey);
	return FALSE;
    }

    for (idx = 0; !FUNC3(hKey, idx, buffer, sizeof(buffer)); idx++)
    {
	if (FUNC5(hKey, buffer, &hPortKey)) continue;

	size = sizeof(port);
	if (FUNC7(hPortKey, NULL, 0, &type, (void*)port, &size)) continue;

	if (!FUNC1(port, &dev)) continue;

	size = sizeof(mask);
	if (FUNC6(hPortKey, "Channels", 0, &type, (void*)&mask, &size))
	    continue;

	for (i = 0; i < 16; i++)
	{
	    if (mask & (1 << i))
	    {
		if (mom->ChannelMap[i])
		    FUNC0("Quirks in registry, channel %u is mapped twice\n", i);
		mom->ChannelMap[i] = &midiOutPorts[dev];
	    }
	}
    }

    FUNC2(hSchemesKey);
    FUNC2(hKey);

    return TRUE;
}
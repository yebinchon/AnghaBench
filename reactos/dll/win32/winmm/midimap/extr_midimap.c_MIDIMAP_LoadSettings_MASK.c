#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  out ;
typedef  int /*<<< orphan*/  buffer ;
typedef  char WCHAR ;
struct TYPE_7__ {TYPE_1__** ChannelMap; } ;
struct TYPE_6__ {int uDevID; } ;
typedef  TYPE_2__ MIDIMAPDATA ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int FUNC1 (TYPE_2__*,char*) ; 
 int FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*,void*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int*,void*,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned int,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msacm ; 

__attribute__((used)) static BOOL	FUNC9(MIDIMAPDATA* mom)
{
    HKEY 	hKey;
    BOOL	ret;

    if (FUNC4(HKEY_CURRENT_USER,
		    "Software\\Microsoft\\Windows\\CurrentVersion\\Multimedia\\MIDIMap", &hKey))
    {
	ret = FUNC1(mom, NULL);
    }
    else
    {
	DWORD	type, size, out;
	WCHAR   buffer[256];

	ret = 2;
	size = sizeof(out);
	if (!FUNC5(hKey, "UseScheme", 0, &type, (void*)&out, &size) && out)
	{
            static const WCHAR cs[] = {'C','u','r','r','e','n','t','S','c','h','e','m','e',0};
	    size = sizeof(buffer);
	    if (!FUNC6(hKey, cs, 0, &type, (void*)buffer, &size))
	    {
		if (!(ret = FUNC2(mom, buffer)))
		    ret = FUNC1(mom, NULL);
	    }
	    else
	    {
		FUNC0("Wrong registry: UseScheme is active, but no CurrentScheme found\n");
	    }
	}
	if (ret == 2)
	{
            static const WCHAR ci[] = {'C','u','r','r','e','n','t','I','n','s','t','r','u','m','e','n','t',0};
	    size = sizeof(buffer);
	    if (!FUNC6(hKey, ci, 0, &type, (void*)buffer, &size) && *buffer)
	    {
		ret = FUNC1(mom, buffer);
	    }
	    else if (!FUNC6(hKey, L"szPname", 0, &type, (void*)buffer, &size) && *buffer)
	    {
		/* Windows XP and higher setting */
		ret = FUNC1(mom, buffer);
	    }
	    else
	    {
		ret = FUNC1(mom, NULL);
	    }
	}
    }
    FUNC3(hKey);

    if (ret && FUNC8(msacm))
    {
	unsigned	i;

	for (i = 0; i < 16; i++)
	{
	    FUNC7("chnMap[%2d] => %d\n",
		  i, mom->ChannelMap[i] ? mom->ChannelMap[i]->uDevID : -1);
	}
    }
    return ret;
}
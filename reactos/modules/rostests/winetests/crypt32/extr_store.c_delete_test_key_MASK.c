#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void)
{
    HKEY root_key, test_key;
    static const WCHAR SysCertW[] = {'S','o','f','t','w','a','r','e','\\','M','i','c','r','o','s','o','f','t','\\',
        'S','y','s','t','e','m','C','e','r','t','i','f','i','c','a','t','e','s',0};
    static const WCHAR WineTestW[] = {'W','i','n','e','T','e','s','t',0};
    WCHAR subkey_name[32];
    DWORD num_subkeys, subkey_name_len;
    int idx;

    if (FUNC4(HKEY_CURRENT_USER, SysCertW, 0, KEY_READ, &root_key))
        return;
    if (FUNC4(root_key, WineTestW, 0, KEY_READ, &test_key))
    {
        FUNC1(root_key);
        return;
    }
    FUNC5(test_key, NULL, NULL, NULL, &num_subkeys, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
    for (idx = num_subkeys; idx-- > 0;)
    {
        subkey_name_len = FUNC0(subkey_name);
        FUNC3(test_key, idx, subkey_name, &subkey_name_len, NULL, NULL, NULL, NULL);
        FUNC2(test_key, subkey_name);
    }
    FUNC1(test_key);
    FUNC2(root_key, WineTestW);
    FUNC1(root_key);
}
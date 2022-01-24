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
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int KEY_CREATE_SUB_KEY ; 
 int KEY_SET_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 char* argv0 ; 
 int /*<<< orphan*/  assoc_desc ; 
 char* child_file ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (char const*) ; 

__attribute__((used)) static void FUNC11(const char* classname, const char* verb,
                                 int rawcmd, const char* cmdtail, const char *ddeexec,
                                 const char *application, const char *topic,
                                 const char *ifexec)
{
    HKEY hkey_shell, hkey_verb, hkey_cmd;
    char shell[MAX_PATH];
    char* cmd;
    LONG rc;

    FUNC9(assoc_desc, " Assoc ");
    FUNC8(assoc_desc, "class", classname);
    FUNC8(assoc_desc, "verb", verb);
    FUNC7(shell, "%d", rawcmd);
    FUNC8(assoc_desc, "rawcmd", shell);
    FUNC8(assoc_desc, "cmdtail", cmdtail);
    FUNC8(assoc_desc, "ddeexec", ddeexec);
    FUNC8(assoc_desc, "app", application);
    FUNC8(assoc_desc, "topic", topic);
    FUNC8(assoc_desc, "ifexec", ifexec);

    FUNC7(shell, "%s\\shell", classname);
    rc=FUNC2(HKEY_CLASSES_ROOT, shell, 0,
                     KEY_CREATE_SUB_KEY, &hkey_shell);
    FUNC6(rc == ERROR_SUCCESS, "%s key creation failed with %d\n", shell, rc);

    rc=FUNC1(hkey_shell, verb, 0, NULL, 0, KEY_CREATE_SUB_KEY,
                       NULL, &hkey_verb, NULL);
    FUNC6(rc == ERROR_SUCCESS, "%s verb key creation failed with %d\n", verb, rc);

    rc=FUNC1(hkey_verb, "command", 0, NULL, 0, KEY_SET_VALUE,
                       NULL, &hkey_cmd, NULL);
    FUNC6(rc == ERROR_SUCCESS, "\'command\' key creation failed with %d\n", rc);

    if (rawcmd)
    {
        rc=FUNC3(hkey_cmd, NULL, 0, REG_SZ, (LPBYTE)cmdtail, FUNC10(cmdtail)+1);
    }
    else
    {
        cmd = FUNC4(FUNC10(argv0) + 10 + FUNC10(child_file) + 2 + FUNC10(cmdtail) + 1);
        FUNC7(cmd,"%s shlexec \"%s\" %s", argv0, child_file, cmdtail);
        rc=FUNC3(hkey_cmd, NULL, 0, REG_SZ, (LPBYTE)cmd, FUNC10(cmd)+1);
        FUNC6(rc == ERROR_SUCCESS, "setting command failed with %d\n", rc);
        FUNC5(cmd);
    }

    if (ddeexec)
    {
        HKEY hkey_ddeexec, hkey_application, hkey_topic, hkey_ifexec;

        rc=FUNC1(hkey_verb, "ddeexec", 0, NULL, 0, KEY_SET_VALUE |
                           KEY_CREATE_SUB_KEY, NULL, &hkey_ddeexec, NULL);
        FUNC6(rc == ERROR_SUCCESS, "\'ddeexec\' key creation failed with %d\n", rc);
        rc=FUNC3(hkey_ddeexec, NULL, 0, REG_SZ, (LPBYTE)ddeexec,
                          FUNC10(ddeexec)+1);
        FUNC6(rc == ERROR_SUCCESS, "set value failed with %d\n", rc);

        if (application)
        {
            rc=FUNC1(hkey_ddeexec, "application", 0, NULL, 0, KEY_SET_VALUE,
                               NULL, &hkey_application, NULL);
            FUNC6(rc == ERROR_SUCCESS, "\'application\' key creation failed with %d\n", rc);

            rc=FUNC3(hkey_application, NULL, 0, REG_SZ, (LPBYTE)application,
                              FUNC10(application)+1);
            FUNC6(rc == ERROR_SUCCESS, "set value failed with %d\n", rc);
            FUNC0(hkey_application);
        }
        if (topic)
        {
            rc=FUNC1(hkey_ddeexec, "topic", 0, NULL, 0, KEY_SET_VALUE,
                               NULL, &hkey_topic, NULL);
            FUNC6(rc == ERROR_SUCCESS, "\'topic\' key creation failed with %d\n", rc);
            rc=FUNC3(hkey_topic, NULL, 0, REG_SZ, (LPBYTE)topic,
                              FUNC10(topic)+1);
            FUNC6(rc == ERROR_SUCCESS, "set value failed with %d\n", rc);
            FUNC0(hkey_topic);
        }
        if (ifexec)
        {
            rc=FUNC1(hkey_ddeexec, "ifexec", 0, NULL, 0, KEY_SET_VALUE,
                               NULL, &hkey_ifexec, NULL);
            FUNC6(rc == ERROR_SUCCESS, "\'ifexec\' key creation failed with %d\n", rc);
            rc=FUNC3(hkey_ifexec, NULL, 0, REG_SZ, (LPBYTE)ifexec,
                              FUNC10(ifexec)+1);
            FUNC6(rc == ERROR_SUCCESS, "set value failed with %d\n", rc);
            FUNC0(hkey_ifexec);
        }
        FUNC0(hkey_ddeexec);
    }

    FUNC0(hkey_shell);
    FUNC0(hkey_verb);
    FUNC0(hkey_cmd);
}
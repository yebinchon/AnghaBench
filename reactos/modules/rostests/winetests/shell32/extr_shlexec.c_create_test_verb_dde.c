
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPBYTE ;
typedef int LONG ;
typedef int HKEY ;


 int CloseHandle (int ) ;
 int ERROR_SUCCESS ;
 int HKEY_CLASSES_ROOT ;
 int KEY_CREATE_SUB_KEY ;
 int KEY_SET_VALUE ;
 int MAX_PATH ;
 int REG_SZ ;
 int RegCreateKeyExA (int ,char const*,int ,int *,int ,int,int *,int *,int *) ;
 int RegOpenKeyExA (int ,char*,int ,int,int *) ;
 int RegSetValueExA (int ,int *,int ,int ,int ,scalar_t__) ;
 char* argv0 ;
 int assoc_desc ;
 char* child_file ;
 char* heap_alloc (scalar_t__) ;
 int heap_free (char*) ;
 int ok (int,char*,char const*,...) ;
 int sprintf (char*,char*,...) ;
 int strcat_param (int ,char*,char const*) ;
 int strcpy (int ,char*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void create_test_verb_dde(const char* classname, const char* verb,
                                 int rawcmd, const char* cmdtail, const char *ddeexec,
                                 const char *application, const char *topic,
                                 const char *ifexec)
{
    HKEY hkey_shell, hkey_verb, hkey_cmd;
    char shell[MAX_PATH];
    char* cmd;
    LONG rc;

    strcpy(assoc_desc, " Assoc ");
    strcat_param(assoc_desc, "class", classname);
    strcat_param(assoc_desc, "verb", verb);
    sprintf(shell, "%d", rawcmd);
    strcat_param(assoc_desc, "rawcmd", shell);
    strcat_param(assoc_desc, "cmdtail", cmdtail);
    strcat_param(assoc_desc, "ddeexec", ddeexec);
    strcat_param(assoc_desc, "app", application);
    strcat_param(assoc_desc, "topic", topic);
    strcat_param(assoc_desc, "ifexec", ifexec);

    sprintf(shell, "%s\\shell", classname);
    rc=RegOpenKeyExA(HKEY_CLASSES_ROOT, shell, 0,
                     KEY_CREATE_SUB_KEY, &hkey_shell);
    ok(rc == ERROR_SUCCESS, "%s key creation failed with %d\n", shell, rc);

    rc=RegCreateKeyExA(hkey_shell, verb, 0, ((void*)0), 0, KEY_CREATE_SUB_KEY,
                       ((void*)0), &hkey_verb, ((void*)0));
    ok(rc == ERROR_SUCCESS, "%s verb key creation failed with %d\n", verb, rc);

    rc=RegCreateKeyExA(hkey_verb, "command", 0, ((void*)0), 0, KEY_SET_VALUE,
                       ((void*)0), &hkey_cmd, ((void*)0));
    ok(rc == ERROR_SUCCESS, "\'command\' key creation failed with %d\n", rc);

    if (rawcmd)
    {
        rc=RegSetValueExA(hkey_cmd, ((void*)0), 0, REG_SZ, (LPBYTE)cmdtail, strlen(cmdtail)+1);
    }
    else
    {
        cmd = heap_alloc(strlen(argv0) + 10 + strlen(child_file) + 2 + strlen(cmdtail) + 1);
        sprintf(cmd,"%s shlexec \"%s\" %s", argv0, child_file, cmdtail);
        rc=RegSetValueExA(hkey_cmd, ((void*)0), 0, REG_SZ, (LPBYTE)cmd, strlen(cmd)+1);
        ok(rc == ERROR_SUCCESS, "setting command failed with %d\n", rc);
        heap_free(cmd);
    }

    if (ddeexec)
    {
        HKEY hkey_ddeexec, hkey_application, hkey_topic, hkey_ifexec;

        rc=RegCreateKeyExA(hkey_verb, "ddeexec", 0, ((void*)0), 0, KEY_SET_VALUE |
                           KEY_CREATE_SUB_KEY, ((void*)0), &hkey_ddeexec, ((void*)0));
        ok(rc == ERROR_SUCCESS, "\'ddeexec\' key creation failed with %d\n", rc);
        rc=RegSetValueExA(hkey_ddeexec, ((void*)0), 0, REG_SZ, (LPBYTE)ddeexec,
                          strlen(ddeexec)+1);
        ok(rc == ERROR_SUCCESS, "set value failed with %d\n", rc);

        if (application)
        {
            rc=RegCreateKeyExA(hkey_ddeexec, "application", 0, ((void*)0), 0, KEY_SET_VALUE,
                               ((void*)0), &hkey_application, ((void*)0));
            ok(rc == ERROR_SUCCESS, "\'application\' key creation failed with %d\n", rc);

            rc=RegSetValueExA(hkey_application, ((void*)0), 0, REG_SZ, (LPBYTE)application,
                              strlen(application)+1);
            ok(rc == ERROR_SUCCESS, "set value failed with %d\n", rc);
            CloseHandle(hkey_application);
        }
        if (topic)
        {
            rc=RegCreateKeyExA(hkey_ddeexec, "topic", 0, ((void*)0), 0, KEY_SET_VALUE,
                               ((void*)0), &hkey_topic, ((void*)0));
            ok(rc == ERROR_SUCCESS, "\'topic\' key creation failed with %d\n", rc);
            rc=RegSetValueExA(hkey_topic, ((void*)0), 0, REG_SZ, (LPBYTE)topic,
                              strlen(topic)+1);
            ok(rc == ERROR_SUCCESS, "set value failed with %d\n", rc);
            CloseHandle(hkey_topic);
        }
        if (ifexec)
        {
            rc=RegCreateKeyExA(hkey_ddeexec, "ifexec", 0, ((void*)0), 0, KEY_SET_VALUE,
                               ((void*)0), &hkey_ifexec, ((void*)0));
            ok(rc == ERROR_SUCCESS, "\'ifexec\' key creation failed with %d\n", rc);
            rc=RegSetValueExA(hkey_ifexec, ((void*)0), 0, REG_SZ, (LPBYTE)ifexec,
                              strlen(ifexec)+1);
            ok(rc == ERROR_SUCCESS, "set value failed with %d\n", rc);
            CloseHandle(hkey_ifexec);
        }
        CloseHandle(hkey_ddeexec);
    }

    CloseHandle(hkey_shell);
    CloseHandle(hkey_verb);
    CloseHandle(hkey_cmd);
}

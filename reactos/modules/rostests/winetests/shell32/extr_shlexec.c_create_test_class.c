
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPBYTE ;
typedef int LONG ;
typedef int HKEY ;
typedef scalar_t__ BOOL ;


 int CloseHandle (int ) ;
 int ERROR_ACCESS_DENIED ;
 int ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 int HKEY_CLASSES_ROOT ;
 int KEY_CREATE_SUB_KEY ;
 int KEY_SET_VALUE ;
 int REG_SZ ;
 int RegCreateKeyExA (int ,char const*,int ,int *,int ,int,int *,int *,int *) ;
 int RegSetValueExA (int ,char*,int ,int ,int ,int) ;
 scalar_t__ TRUE ;
 int ok (int,char*,char const*,...) ;

__attribute__((used)) static BOOL create_test_class(const char* class, BOOL protocol)
{
    HKEY hkey, hkey_shell;
    LONG rc;

    rc = RegCreateKeyExA(HKEY_CLASSES_ROOT, class, 0, ((void*)0), 0,
                         KEY_CREATE_SUB_KEY | KEY_SET_VALUE, ((void*)0),
                         &hkey, ((void*)0));
    ok(rc == ERROR_SUCCESS || rc == ERROR_ACCESS_DENIED,
       "could not create class %s (rc=%d)\n", class, rc);
    if (rc != ERROR_SUCCESS)
        return FALSE;

    if (protocol)
    {
        rc = RegSetValueExA(hkey, "URL Protocol", 0, REG_SZ, (LPBYTE)"", 1);
        ok(rc == ERROR_SUCCESS, "RegSetValueEx '%s' failed, expected ERROR_SUCCESS, got %d\n", class, rc);
    }

    rc = RegCreateKeyExA(hkey, "shell", 0, ((void*)0), 0,
                         KEY_CREATE_SUB_KEY, ((void*)0), &hkey_shell, ((void*)0));
    ok(rc == ERROR_SUCCESS, "RegCreateKeyEx 'shell' failed, expected ERROR_SUCCESS, got %d\n", rc);

    CloseHandle(hkey);
    CloseHandle(hkey_shell);
    return TRUE;
}

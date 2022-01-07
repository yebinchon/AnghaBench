
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPBYTE ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int BOOL ;


 int CloseHandle (int ) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int HKEY_CLASSES_ROOT ;
 int KEY_SET_VALUE ;
 int MAX_PATH ;
 int REG_SZ ;
 scalar_t__ RegCreateKeyExA (int ,char const*,int ,int *,int ,int ,int *,int *,int *) ;
 scalar_t__ RegSetValueExA (int ,int *,int ,int ,int ,scalar_t__) ;
 int create_test_class (char*,int ) ;
 int ok (int,char*,char*,scalar_t__) ;
 int sprintf (char*,char*,char const*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static BOOL create_test_association(const char* extension)
{
    HKEY hkey;
    char class[MAX_PATH];
    LONG rc;

    sprintf(class, "shlexec%s", extension);
    rc=RegCreateKeyExA(HKEY_CLASSES_ROOT, extension, 0, ((void*)0), 0, KEY_SET_VALUE,
                       ((void*)0), &hkey, ((void*)0));
    ok(rc == ERROR_SUCCESS || rc == ERROR_ACCESS_DENIED,
       "could not create association %s (rc=%d)\n", class, rc);
    if (rc != ERROR_SUCCESS)
        return FALSE;

    rc=RegSetValueExA(hkey, ((void*)0), 0, REG_SZ, (LPBYTE) class, strlen(class)+1);
    ok(rc==ERROR_SUCCESS, "RegSetValueEx '%s' failed, expected ERROR_SUCCESS, got %d\n", class, rc);
    CloseHandle(hkey);

    return create_test_class(class, FALSE);
}

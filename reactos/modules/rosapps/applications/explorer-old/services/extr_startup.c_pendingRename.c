
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int src ;
typedef int buffer ;
typedef char WCHAR ;
typedef int * LPBYTE ;
typedef int * HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 int DeleteFileW (char const*) ;
 int ERROR_FILE_NOT_FOUND ;
 int ERROR_SUCCESS ;
 int FALSE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int GetFileAttributesW (char const*) ;
 int GetLastError () ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_ALL_ACCESS ;
 int MOVEFILE_REPLACE_EXISTING ;
 int MoveFileExW (char const*,char const*,int) ;
 int RegCloseKey (int *) ;
 int RegDeleteValueW (int *,char const*) ;
 int RegOpenKeyExW (int ,char const*,int ,int ,int **) ;
 int RegQueryValueExW (int *,char const*,int *,int *,int *,int*) ;
 int RemoveDirectoryW (char const*) ;
 int TRUE ;
 int free (char*) ;
 int lstrlenW (char const*) ;
 char* malloc (int) ;
 int printf (char*,...) ;

__attribute__((used)) static BOOL pendingRename()
{
    static const WCHAR ValueName[] = {'P','e','n','d','i','n','g',
                                      'F','i','l','e','R','e','n','a','m','e',
                                      'O','p','e','r','a','t','i','o','n','s',0};
    static const WCHAR SessionW[] = { 'S','y','s','t','e','m','\\',
                                     'C','u','r','r','e','n','t','C','o','n','t','r','o','l','S','e','t','\\',
                                     'C','o','n','t','r','o','l','\\',
                                     'S','e','s','s','i','o','n',' ','M','a','n','a','g','e','r',0};
    WCHAR *buffer=((void*)0);
    const WCHAR *src=((void*)0), *dst=((void*)0);
    DWORD dataLength=0;
    HKEY hSession=((void*)0);
    DWORD res;

    printf("Entered\n");

    if ((res=RegOpenKeyExW(HKEY_LOCAL_MACHINE, SessionW, 0, KEY_ALL_ACCESS, &hSession))
            !=ERROR_SUCCESS)
    {
        if (res==ERROR_FILE_NOT_FOUND)
        {
            printf("The key was not found - skipping\n");
            res=TRUE;
        }
        else
        {
            printf("Couldn't open key, error %lu\n", res);
            res=FALSE;
        }

        goto end;
    }

    res=RegQueryValueExW(hSession, ValueName, ((void*)0), ((void*)0) ,

            ((void*)0), &dataLength);
    if (res==ERROR_FILE_NOT_FOUND)
    {

        printf("Value not present - nothing to rename\n");
        res=TRUE;
        goto end;
    }

    if (res!=ERROR_SUCCESS)
    {
        printf("Couldn't query value's length (%lu)\n", res);
        res=FALSE;
        goto end;
    }

    buffer=malloc(dataLength);
    if (buffer==((void*)0))
    {
        printf("Couldn't allocate %lu bytes for the value\n", dataLength);
        res=FALSE;
        goto end;
    }

    res=RegQueryValueExW(hSession, ValueName, ((void*)0), ((void*)0), (LPBYTE)buffer, &dataLength);
    if (res!=ERROR_SUCCESS)
    {
        printf("Couldn't query value after successfully querying before (%lu),\n"
                "please report to wine-devel@winehq.org\n", res);
        res=FALSE;
        goto end;
    }




    if (dataLength<2*sizeof(buffer[0]) ||
            buffer[dataLength/sizeof(buffer[0])-1]!='\0' ||
            buffer[dataLength/sizeof(buffer[0])-2]!='\0')
    {
        printf("Improper value format - doesn't end with NULL\n");
        res=FALSE;
        goto end;
    }

    for(src=buffer; (src-buffer)*sizeof(src[0])<dataLength && *src!='\0';
            src=dst+lstrlenW(dst)+1)
    {
        DWORD dwFlags=0;

        printf("processing next command\n");

        dst=src+lstrlenW(src)+1;


        if (src[0]=='\\' && src[1]=='?' && src[2]=='?' && src[3]=='\\')
            src+=4;

        if (dst[0]=='!')
        {
            dwFlags|=MOVEFILE_REPLACE_EXISTING;
            dst++;
        }

        if (dst[0]=='\\' && dst[1]=='?' && dst[2]=='?' && dst[3]=='\\')
            dst+=4;

        if (*dst!='\0')
        {

            MoveFileExW(src, dst, dwFlags);
        } else
        {

   res = GetFileAttributesW (src);
            if (res != (DWORD)-1)
            {
                if ((res&FILE_ATTRIBUTE_DIRECTORY)==0)
                {

                    DeleteFileW(src);
                } else
                {

                    RemoveDirectoryW(src);
                }
            } else
            {
                printf("couldn't get file attributes (%ld)\n", GetLastError());
            }
        }
    }

    if ((res=RegDeleteValueW(hSession, ValueName))!=ERROR_SUCCESS)
    {
        printf("Error deleting the value (%lu)\n", GetLastError());
        res=FALSE;
    } else
        res=TRUE;

end:
    if (buffer!=((void*)0))
        free(buffer);

    if (hSession!=((void*)0))
        RegCloseKey(hSession);

    return res;
}

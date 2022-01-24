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
typedef  int /*<<< orphan*/  src ;
typedef  int /*<<< orphan*/  buffer ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int ERROR_FILE_NOT_FOUND ; 
 int ERROR_SUCCESS ; 
 int FALSE ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int FUNC1 (char const*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int MOVEFILE_REPLACE_EXISTING ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (char const*) ; 
 char* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 

__attribute__((used)) static BOOL FUNC13()
{
    static const WCHAR ValueName[] = {'P','e','n','d','i','n','g',
                                      'F','i','l','e','R','e','n','a','m','e',
                                      'O','p','e','r','a','t','i','o','n','s',0};
    static const WCHAR SessionW[] = { 'S','y','s','t','e','m','\\',
                                     'C','u','r','r','e','n','t','C','o','n','t','r','o','l','S','e','t','\\',
                                     'C','o','n','t','r','o','l','\\',
                                     'S','e','s','s','i','o','n',' ','M','a','n','a','g','e','r',0};
    WCHAR *buffer=NULL;
    const WCHAR *src=NULL, *dst=NULL;
    DWORD dataLength=0;
    HKEY hSession=NULL;
    DWORD res;

    FUNC12("Entered\n");

    if ((res=FUNC6(HKEY_LOCAL_MACHINE, SessionW, 0, KEY_ALL_ACCESS, &hSession))
            !=ERROR_SUCCESS)
    {
        if (res==ERROR_FILE_NOT_FOUND)
        {
            FUNC12("The key was not found - skipping\n");
            res=TRUE;
        }
        else
        {
            FUNC12("Couldn't open key, error %lu\n", res);
            res=FALSE;
        }

        goto end;
    }

    res=FUNC7(hSession, ValueName, NULL, NULL /* The value type does not really interest us, as it is not
                                                             truely a REG_MULTI_SZ anyways */,
            NULL, &dataLength);
    if (res==ERROR_FILE_NOT_FOUND)
    {
        /* No value - nothing to do. Great! */
        FUNC12("Value not present - nothing to rename\n");
        res=TRUE;
        goto end;
    }

    if (res!=ERROR_SUCCESS)
    {
        FUNC12("Couldn't query value's length (%lu)\n", res);
        res=FALSE;
        goto end;
    }

    buffer=FUNC11(dataLength);
    if (buffer==NULL)
    {
        FUNC12("Couldn't allocate %lu bytes for the value\n", dataLength);
        res=FALSE;
        goto end;
    }

    res=FUNC7(hSession, ValueName, NULL, NULL, (LPBYTE)buffer, &dataLength);
    if (res!=ERROR_SUCCESS)
    {
        FUNC12("Couldn't query value after successfully querying before (%lu),\n"
                "please report to wine-devel@winehq.org\n", res);
        res=FALSE;
        goto end;
    }

    /* Make sure that the data is long enough and ends with two NULLs. This
     * simplifies the code later on.
     */
    if (dataLength<2*sizeof(buffer[0]) ||
            buffer[dataLength/sizeof(buffer[0])-1]!='\0' ||
            buffer[dataLength/sizeof(buffer[0])-2]!='\0')
    {
        FUNC12("Improper value format - doesn't end with NULL\n");
        res=FALSE;
        goto end;
    }

    for(src=buffer; (src-buffer)*sizeof(src[0])<dataLength && *src!='\0';
            src=dst+FUNC10(dst)+1)
    {
        DWORD dwFlags=0;

        FUNC12("processing next command\n");

        dst=src+FUNC10(src)+1;

        /* We need to skip the \??\ header */
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
            /* Rename the file */
            FUNC3(src, dst, dwFlags);
        } else
        {
            /* Delete the file or directory */
			res = FUNC1 (src);
            if (res != (DWORD)-1)
            {
                if ((res&FILE_ATTRIBUTE_DIRECTORY)==0)
                {
                    /* It's a file */
                    FUNC0(src);
                } else
                {
                    /* It's a directory */
                    FUNC8(src);
                }
            } else
            {
                FUNC12("couldn't get file attributes (%ld)\n", FUNC2());
            }
        }
    }

    if ((res=FUNC5(hSession, ValueName))!=ERROR_SUCCESS)
    {
        FUNC12("Error deleting the value (%lu)\n", FUNC2());
        res=FALSE;
    } else
        res=TRUE;

end:
    if (buffer!=NULL)
        FUNC9(buffer);

    if (hSession!=NULL)
        FUNC4(hSession);

    return res;
}
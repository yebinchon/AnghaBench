#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  szSearchPath ;
typedef  int /*<<< orphan*/  szFileTypes ;
struct TYPE_9__ {int /*<<< orphan*/ * cFileName; } ;
typedef  TYPE_1__ WIN32_FIND_DATAW ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  size_t UINT ;
struct TYPE_10__ {struct TYPE_10__* Prev; struct TYPE_10__* Next; int /*<<< orphan*/ * FileName; int /*<<< orphan*/  FilenameExtension; } ;
typedef  TYPE_2__ SHIMGVW_FILENODE ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  TYPE_2__ ImageCodecInfo ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC3 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (size_t,size_t,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (size_t*,size_t*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 void* FUNC11 (int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static SHIMGVW_FILENODE*
FUNC14(LPWSTR szFirstFile)
{
    HANDLE hFindHandle;
    WCHAR *extension;
    WCHAR szSearchPath[MAX_PATH];
    WCHAR szSearchMask[MAX_PATH];
    WCHAR szFileTypes[MAX_PATH];
    WIN32_FIND_DATAW findData;
    SHIMGVW_FILENODE *currentNode = NULL;
    SHIMGVW_FILENODE *root = NULL;
    SHIMGVW_FILENODE *conductor = NULL;
    ImageCodecInfo *codecInfo;
    UINT num;
    UINT size;
    UINT j;

    FUNC8(szSearchPath, sizeof(szSearchPath), szFirstFile);
    FUNC7(szSearchPath);

    FUNC5(&num, &size);
    codecInfo = FUNC11(size);
    if (!codecInfo)
    {
        FUNC0("malloc() failed in pLoadFileList()\n");
        return NULL;
    }

    FUNC4(num, size, codecInfo);

    root = FUNC11(sizeof(SHIMGVW_FILENODE));
    if (!root)
    {
        FUNC0("malloc() failed in pLoadFileList()\n");
        FUNC10(codecInfo);
        return NULL;
    }

    conductor = root;

    for (j = 0; j < num; ++j)
    {
        FUNC8(szFileTypes, sizeof(szFileTypes), codecInfo[j].FilenameExtension);

        extension = FUNC13(szFileTypes, L";");
        while (extension != NULL)
        {
            FUNC6(szSearchMask, szSearchPath, extension);

            hFindHandle = FUNC2(szSearchMask, &findData);
            if (hFindHandle != INVALID_HANDLE_VALUE)
            {
                do
                {
                    FUNC6(conductor->FileName, szSearchPath, findData.cFileName);

                    // compare the name of the requested file with the one currently found.
                    // if the name matches, the current node is returned by the function.
                    if (FUNC12(szFirstFile, conductor->FileName) == 0)
                    {
                        currentNode = conductor;
                    }

                    conductor->Next = FUNC11(sizeof(SHIMGVW_FILENODE));

                    // if malloc fails, make circular what we have and return it
                    if (!conductor->Next)
                    {
                        FUNC0("malloc() failed in pLoadFileList()\n");

                        conductor->Next = root;
                        root->Prev = conductor;

                        FUNC1(hFindHandle);
                        FUNC10(codecInfo);
                        return conductor;
                    }

                    conductor->Next->Prev = conductor;
                    conductor = conductor->Next;
                }
                while (FUNC3(hFindHandle, &findData) != 0);

                FUNC1(hFindHandle);
            }

            extension = FUNC13(NULL, L";");
        }
    }

    // we now have a node too much in the list. In case the requested file was not found,
    // we use this node to store the name of it, otherwise we free it.
    if (currentNode == NULL)
    {
        FUNC9(conductor->FileName, MAX_PATH, szFirstFile);
        currentNode = conductor;
    }
    else
    {
        conductor = conductor->Prev;
        FUNC10(conductor->Next);
    }

    // link the last node with the first one to make the list circular
    conductor->Next = root;
    root->Prev = conductor;
    conductor = currentNode;

    FUNC10(codecInfo);

    return conductor;
}
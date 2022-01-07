
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int szSearchPath ;
typedef int szFileTypes ;
struct TYPE_9__ {int * cFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATAW ;
typedef int WCHAR ;
typedef size_t UINT ;
struct TYPE_10__ {struct TYPE_10__* Prev; struct TYPE_10__* Next; int * FileName; int FilenameExtension; } ;
typedef TYPE_2__ SHIMGVW_FILENODE ;
typedef int LPWSTR ;
typedef TYPE_2__ ImageCodecInfo ;
typedef scalar_t__ HANDLE ;


 int DPRINT1 (char*) ;
 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFileW (int *,TYPE_1__*) ;
 scalar_t__ FindNextFileW (scalar_t__,TYPE_1__*) ;
 int GdipGetImageDecoders (size_t,size_t,TYPE_2__*) ;
 int GdipGetImageDecodersSize (size_t*,size_t*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int PathCombineW (int *,int *,int *) ;
 int PathRemoveFileSpecW (int *) ;
 int StringCbCopyW (int *,int,int ) ;
 int StringCchCopyW (int *,int,int ) ;
 int free (TYPE_2__*) ;
 void* malloc (int) ;
 scalar_t__ wcscmp (int ,int *) ;
 int * wcstok (int *,char*) ;

__attribute__((used)) static SHIMGVW_FILENODE*
pBuildFileList(LPWSTR szFirstFile)
{
    HANDLE hFindHandle;
    WCHAR *extension;
    WCHAR szSearchPath[MAX_PATH];
    WCHAR szSearchMask[MAX_PATH];
    WCHAR szFileTypes[MAX_PATH];
    WIN32_FIND_DATAW findData;
    SHIMGVW_FILENODE *currentNode = ((void*)0);
    SHIMGVW_FILENODE *root = ((void*)0);
    SHIMGVW_FILENODE *conductor = ((void*)0);
    ImageCodecInfo *codecInfo;
    UINT num;
    UINT size;
    UINT j;

    StringCbCopyW(szSearchPath, sizeof(szSearchPath), szFirstFile);
    PathRemoveFileSpecW(szSearchPath);

    GdipGetImageDecodersSize(&num, &size);
    codecInfo = malloc(size);
    if (!codecInfo)
    {
        DPRINT1("malloc() failed in pLoadFileList()\n");
        return ((void*)0);
    }

    GdipGetImageDecoders(num, size, codecInfo);

    root = malloc(sizeof(SHIMGVW_FILENODE));
    if (!root)
    {
        DPRINT1("malloc() failed in pLoadFileList()\n");
        free(codecInfo);
        return ((void*)0);
    }

    conductor = root;

    for (j = 0; j < num; ++j)
    {
        StringCbCopyW(szFileTypes, sizeof(szFileTypes), codecInfo[j].FilenameExtension);

        extension = wcstok(szFileTypes, L";");
        while (extension != ((void*)0))
        {
            PathCombineW(szSearchMask, szSearchPath, extension);

            hFindHandle = FindFirstFileW(szSearchMask, &findData);
            if (hFindHandle != INVALID_HANDLE_VALUE)
            {
                do
                {
                    PathCombineW(conductor->FileName, szSearchPath, findData.cFileName);



                    if (wcscmp(szFirstFile, conductor->FileName) == 0)
                    {
                        currentNode = conductor;
                    }

                    conductor->Next = malloc(sizeof(SHIMGVW_FILENODE));


                    if (!conductor->Next)
                    {
                        DPRINT1("malloc() failed in pLoadFileList()\n");

                        conductor->Next = root;
                        root->Prev = conductor;

                        FindClose(hFindHandle);
                        free(codecInfo);
                        return conductor;
                    }

                    conductor->Next->Prev = conductor;
                    conductor = conductor->Next;
                }
                while (FindNextFileW(hFindHandle, &findData) != 0);

                FindClose(hFindHandle);
            }

            extension = wcstok(((void*)0), L";");
        }
    }



    if (currentNode == ((void*)0))
    {
        StringCchCopyW(conductor->FileName, MAX_PATH, szFirstFile);
        currentNode = conductor;
    }
    else
    {
        conductor = conductor->Prev;
        free(conductor->Next);
    }


    conductor->Next = root;
    root->Prev = conductor;
    conductor = currentNode;

    free(codecInfo);

    return conductor;
}

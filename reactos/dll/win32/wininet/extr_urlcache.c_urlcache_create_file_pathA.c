
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t dirs_no; TYPE_1__* directory_data; } ;
typedef TYPE_2__ urlcache_header ;
struct TYPE_8__ {int path; } ;
typedef TYPE_3__ cache_container ;
struct TYPE_6__ {int name; } ;
typedef char* LPSTR ;
typedef int* LPLONG ;
typedef int LPCSTR ;
typedef int LONG ;
typedef size_t BYTE ;
typedef int BOOL ;


 size_t CACHE_CONTAINER_NO_SUBDIR ;
 int CP_ACP ;
 int DIR_LENGTH ;
 int FALSE ;
 int TRUE ;
 int WideCharToMultiByte (int ,int ,int ,int,char*,int,int *,int *) ;
 int memcpy (char*,int ,int) ;
 int strlen (int ) ;

__attribute__((used)) static BOOL urlcache_create_file_pathA(
    const cache_container *pContainer,
    const urlcache_header *pHeader,
    LPCSTR szLocalFileName,
    BYTE Directory,
    LPSTR szPath,
    LPLONG lpBufferSize)
{
    LONG nRequired;
    int path_len, file_name_len, dir_len;

    if (Directory!=CACHE_CONTAINER_NO_SUBDIR && Directory>=pHeader->dirs_no)
    {
        *lpBufferSize = 0;
        return FALSE;
    }

    path_len = WideCharToMultiByte(CP_ACP, 0, pContainer->path, -1, ((void*)0), 0, ((void*)0), ((void*)0)) - 1;
    file_name_len = strlen(szLocalFileName) + 1 ;
    if (Directory!=CACHE_CONTAINER_NO_SUBDIR)
        dir_len = DIR_LENGTH+1;
    else
        dir_len = 0;

    nRequired = (path_len + dir_len + file_name_len) * sizeof(char);
    if (nRequired <= *lpBufferSize)
    {
        WideCharToMultiByte(CP_ACP, 0, pContainer->path, -1, szPath, path_len, ((void*)0), ((void*)0));
        if(dir_len) {
            memcpy(szPath+path_len, pHeader->directory_data[Directory].name, dir_len-1);
            szPath[path_len + dir_len-1] = '\\';
        }
        memcpy(szPath + path_len + dir_len, szLocalFileName, file_name_len);
        *lpBufferSize = nRequired;
        return TRUE;
    }
    *lpBufferSize = nRequired;
    return FALSE;
}

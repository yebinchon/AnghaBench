
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
typedef int WCHAR ;
struct TYPE_6__ {int name; } ;
typedef char* LPWSTR ;
typedef int* LPLONG ;
typedef int LPCSTR ;
typedef int LONG ;
typedef size_t BYTE ;
typedef scalar_t__ BOOL ;


 size_t CACHE_CONTAINER_NO_SUBDIR ;
 int CP_ACP ;
 int DIR_LENGTH ;
 scalar_t__ FALSE ;
 int MultiByteToWideChar (int ,int ,int ,int,char*,int) ;
 scalar_t__ TRUE ;
 int memcpy (char*,int ,int) ;
 int strlenW (int ) ;

__attribute__((used)) static BOOL urlcache_create_file_pathW(
    const cache_container *pContainer,
    const urlcache_header *pHeader,
    LPCSTR szLocalFileName,
    BYTE Directory,
    LPWSTR wszPath,
    LPLONG lpBufferSize,
    BOOL trunc_name)
{
    LONG nRequired;
    int path_len = strlenW(pContainer->path);
    int file_name_len = MultiByteToWideChar(CP_ACP, 0, szLocalFileName, -1, ((void*)0), 0);
    if (Directory!=CACHE_CONTAINER_NO_SUBDIR && Directory>=pHeader->dirs_no)
    {
        *lpBufferSize = 0;
        return FALSE;
    }

    nRequired = (path_len + file_name_len) * sizeof(WCHAR);
    if(Directory != CACHE_CONTAINER_NO_SUBDIR)
        nRequired += (DIR_LENGTH + 1) * sizeof(WCHAR);
    if (trunc_name && nRequired >= *lpBufferSize)
        nRequired = *lpBufferSize;
    if (nRequired <= *lpBufferSize)
    {
        int dir_len;

        memcpy(wszPath, pContainer->path, path_len * sizeof(WCHAR));
        if (Directory != CACHE_CONTAINER_NO_SUBDIR)
        {
            dir_len = MultiByteToWideChar(CP_ACP, 0, pHeader->directory_data[Directory].name, DIR_LENGTH, wszPath + path_len, DIR_LENGTH);
            wszPath[dir_len + path_len] = '\\';
            dir_len++;
        }
        else
        {
            dir_len = 0;
        }
        MultiByteToWideChar(CP_ACP, 0, szLocalFileName, -1, wszPath + dir_len + path_len,
                *lpBufferSize/sizeof(WCHAR)-dir_len-path_len);
        wszPath[*lpBufferSize/sizeof(WCHAR)-1] = 0;
        *lpBufferSize = nRequired;
        return TRUE;
    }
    *lpBufferSize = nRequired;
    return FALSE;
}

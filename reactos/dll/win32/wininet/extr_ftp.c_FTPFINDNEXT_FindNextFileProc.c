
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int dwFlags; int dwContext; } ;
struct TYPE_11__ {size_t index; size_t size; TYPE_6__ hdr; int * lpafp; } ;
typedef TYPE_1__ WININETFTPFINDNEXTW ;
struct TYPE_12__ {size_t nFileSizeLow; int cFileName; } ;
typedef TYPE_2__ WIN32_FIND_DATAW ;
struct TYPE_13__ {int dwResult; scalar_t__ dwError; } ;
typedef TYPE_2__* LPVOID ;
typedef TYPE_4__ INTERNET_ASYNC_RESULT ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_NO_MORE_FILES ;
 scalar_t__ ERROR_SUCCESS ;
 int FTP_ConvertFileProp (int *,TYPE_2__*) ;
 int INTERNET_FLAG_ASYNC ;
 int INTERNET_STATUS_REQUEST_COMPLETE ;
 int INTERNET_SendCallback (TYPE_6__*,int ,int ,TYPE_4__*,int) ;
 int TRACE (char*,size_t,size_t) ;
 int ZeroMemory (TYPE_2__*,int) ;
 size_t debugstr_w (int ) ;

__attribute__((used)) static DWORD FTPFINDNEXT_FindNextFileProc(WININETFTPFINDNEXTW *find, LPVOID data)
{
    WIN32_FIND_DATAW *find_data = data;
    DWORD res = ERROR_SUCCESS;

    TRACE("index(%d) size(%d)\n", find->index, find->size);

    ZeroMemory(find_data, sizeof(WIN32_FIND_DATAW));

    if (find->index < find->size) {
        FTP_ConvertFileProp(&find->lpafp[find->index], find_data);
        find->index++;

        TRACE("Name: %s\nSize: %d\n", debugstr_w(find_data->cFileName), find_data->nFileSizeLow);
    }else {
        res = ERROR_NO_MORE_FILES;
    }

    if (find->hdr.dwFlags & INTERNET_FLAG_ASYNC)
    {
        INTERNET_ASYNC_RESULT iar;

        iar.dwResult = (res == ERROR_SUCCESS);
        iar.dwError = res;

        INTERNET_SendCallback(&find->hdr, find->hdr.dwContext,
                              INTERNET_STATUS_REQUEST_COMPLETE, &iar,
                              sizeof(INTERNET_ASYNC_RESULT));
    }

    return res;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cAlternateFileName; int cFileName; int dwReserved1; int dwReserved0; int nFileSizeLow; int nFileSizeHigh; int ftLastWriteTime; int ftLastAccessTime; int ftCreationTime; int dwFileAttributes; } ;
struct TYPE_5__ {int cAlternateFileName; int cFileName; int dwReserved1; int dwReserved0; int nFileSizeLow; int nFileSizeHigh; int ftLastWriteTime; int ftLastAccessTime; int ftCreationTime; int dwFileAttributes; } ;
typedef TYPE_1__* LPWIN32_FIND_DATAW ;
typedef TYPE_2__* LPWIN32_FIND_DATAA ;


 int CP_ACP ;
 int WideCharToMultiByte (int ,int ,int ,int,int ,int,int *,int *) ;

__attribute__((used)) static inline void WININET_find_data_WtoA(LPWIN32_FIND_DATAW dataW, LPWIN32_FIND_DATAA dataA)
{
    dataA->dwFileAttributes = dataW->dwFileAttributes;
    dataA->ftCreationTime = dataW->ftCreationTime;
    dataA->ftLastAccessTime = dataW->ftLastAccessTime;
    dataA->ftLastWriteTime = dataW->ftLastWriteTime;
    dataA->nFileSizeHigh = dataW->nFileSizeHigh;
    dataA->nFileSizeLow = dataW->nFileSizeLow;
    dataA->dwReserved0 = dataW->dwReserved0;
    dataA->dwReserved1 = dataW->dwReserved1;
    WideCharToMultiByte(CP_ACP, 0, dataW->cFileName, -1,
        dataA->cFileName, sizeof(dataA->cFileName),
        ((void*)0), ((void*)0));
    WideCharToMultiByte(CP_ACP, 0, dataW->cAlternateFileName, -1,
        dataA->cAlternateFileName, sizeof(dataA->cAlternateFileName),
        ((void*)0), ((void*)0));
}

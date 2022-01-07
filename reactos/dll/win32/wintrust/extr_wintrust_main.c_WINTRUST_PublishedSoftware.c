
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wintrust_data ;
typedef int fileInfo ;
struct TYPE_8__ {int member_0; int hFile; int pcwszFilePath; int member_1; } ;
typedef TYPE_2__ WINTRUST_FILE_INFO ;
struct TYPE_7__ {TYPE_2__* pFile; } ;
struct TYPE_9__ {int member_0; int dwUIChoice; int dwUnionChoice; TYPE_1__ u; TYPE_4__* pSIPClientData; int member_1; } ;
typedef TYPE_3__ WINTRUST_DATA ;
struct TYPE_10__ {int hFile; int lpPath; } ;
typedef TYPE_4__* LPWIN_TRUST_SUBJECT_FILE ;
typedef int LONG ;
typedef int HWND ;
typedef int GUID ;


 int TRACE (char*,int ) ;
 int WINTRUST_DefaultVerifyAndClose (int ,int *,TYPE_3__*) ;
 int WTD_CHOICE_FILE ;
 int WTD_UI_NONE ;
 int debugstr_w (int ) ;

__attribute__((used)) static LONG WINTRUST_PublishedSoftware(HWND hwnd, GUID *actionID,
 WINTRUST_DATA *data)
{
    WINTRUST_DATA wintrust_data = { sizeof(wintrust_data), 0 };



    LPWIN_TRUST_SUBJECT_FILE subjectFile = data->pSIPClientData;
    WINTRUST_FILE_INFO fileInfo = { sizeof(fileInfo), 0 };

    TRACE("subjectFile->hFile: %p\n", subjectFile->hFile);
    TRACE("subjectFile->lpPath: %s\n", debugstr_w(subjectFile->lpPath));
    fileInfo.pcwszFilePath = subjectFile->lpPath;
    fileInfo.hFile = subjectFile->hFile;
    wintrust_data.u.pFile = &fileInfo;
    wintrust_data.dwUnionChoice = WTD_CHOICE_FILE;
    wintrust_data.dwUIChoice = WTD_UI_NONE;

    return WINTRUST_DefaultVerifyAndClose(hwnd, actionID, &wintrust_data);
}

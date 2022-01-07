
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 scalar_t__ CreateFile (int ,int ,int ,int *,int ,int ,int *) ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_ALWAYS ;
 int TRUE ;
 scalar_t__ hLogFile ;
 int lpLogFileName ;

__attribute__((used)) static BOOL
OpenLogFile()
{
    hLogFile = CreateFile(lpLogFileName,
                          GENERIC_WRITE,
                          0,
                          ((void*)0),
                          OPEN_ALWAYS,
                          FILE_ATTRIBUTE_NORMAL,
                          ((void*)0));
    if (hLogFile == INVALID_HANDLE_VALUE)
        return FALSE;

    return TRUE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int WriteTotalTimeoutConstant; } ;
struct TYPE_6__ {int hFile; } ;
typedef TYPE_1__* PLOCALMON_PORT ;
typedef TYPE_2__ COMMTIMEOUTS ;
typedef int BOOL ;


 int FALSE ;
 int GetCommTimeouts (int ,TYPE_2__*) ;
 int GetLPTTransmissionRetryTimeout () ;
 int SetCommTimeouts (int ,TYPE_2__*) ;
 int TRUE ;

__attribute__((used)) static BOOL
_SetTransmissionRetryTimeout(PLOCALMON_PORT pPort)
{
    COMMTIMEOUTS CommTimeouts;


    if (!GetCommTimeouts(pPort->hFile, &CommTimeouts))
        return FALSE;


    CommTimeouts.WriteTotalTimeoutConstant = GetLPTTransmissionRetryTimeout() * 1000;
    SetCommTimeouts(pPort->hFile, &CommTimeouts);

    return TRUE;
}

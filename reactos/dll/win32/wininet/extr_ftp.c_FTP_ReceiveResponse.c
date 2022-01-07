
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hdr; int sndSocket; } ;
typedef TYPE_1__ ftp_session_t ;
typedef char* LPSTR ;
typedef int INT ;
typedef int DWORD_PTR ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int FTP_GetNextLine (int ,int*) ;
 char* INTERNET_GetResponseBuffer () ;
 int INTERNET_STATUS_RECEIVING_RESPONSE ;
 int INTERNET_STATUS_RESPONSE_RECEIVED ;
 int INTERNET_SendCallback (int *,int ,int ,int*,int) ;
 int TRACE (char*,int ) ;
 scalar_t__ TRUE ;
 int atoi (char*) ;
 int memcmp (char*,char*,int) ;
 int memcpy (char*,char*,int) ;

INT FTP_ReceiveResponse(ftp_session_t *lpwfs, DWORD_PTR dwContext)
{
    LPSTR lpszResponse = INTERNET_GetResponseBuffer();
    DWORD nRecv;
    INT rc = 0;
    char firstprefix[5];
    BOOL multiline = FALSE;

    TRACE("socket(%d)\n", lpwfs->sndSocket);

    INTERNET_SendCallback(&lpwfs->hdr, dwContext, INTERNET_STATUS_RECEIVING_RESPONSE, ((void*)0), 0);

    while(1)
    {
 if (!FTP_GetNextLine(lpwfs->sndSocket, &nRecv))
     goto lerror;

        if (nRecv >= 3)
 {
     if(!multiline)
     {
         if(lpszResponse[3] != '-')
      break;
  else
  {
      multiline = TRUE;
      memcpy(firstprefix, lpszResponse, 3);
      firstprefix[3] = ' ';
      firstprefix[4] = '\0';
  }
     }
     else
     {
         if(!memcmp(firstprefix, lpszResponse, 4))
      break;
     }
 }
    }

    if (nRecv >= 3)
    {
        rc = atoi(lpszResponse);

        INTERNET_SendCallback(&lpwfs->hdr, dwContext, INTERNET_STATUS_RESPONSE_RECEIVED,
      &nRecv, sizeof(DWORD));
    }

lerror:
    TRACE("return %d\n", rc);
    return rc;
}

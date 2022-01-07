
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int overlapped ;
struct TYPE_6__ {scalar_t__ sock; } ;
struct TYPE_8__ {int disconnect_reason; TYPE_1__ tcp; } ;
struct TYPE_7__ {scalar_t__ data; scalar_t__ end; } ;
typedef TYPE_2__* STREAM ;
typedef TYPE_3__ RDPCLIENT ;
typedef int OVERLAPPED ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int CancelIo (int ) ;
 int False ;
 int GetOverlappedResult (int ,int *,scalar_t__*,int ) ;
 int INFINITE ;
 int TRUE ;
 int True ;



 int WaitForSingleObjectEx (int ,int ,int ) ;
 int WriteFile (int ,scalar_t__,int,int *,int *) ;
 int memset (int *,int ,int) ;

BOOL
tcp_send(RDPCLIENT * This, STREAM s)
{
 int length = (int)(s->end - s->data);
 int total = 0;
 DWORD sent;

 OVERLAPPED overlapped;
 memset(&overlapped, 0, sizeof(overlapped));

 while (total < length)
 {
  WriteFile((HANDLE)This->tcp.sock, s->data + total, length - total, ((void*)0), &overlapped);

  switch(WaitForSingleObjectEx((HANDLE)This->tcp.sock, INFINITE, TRUE))
  {

  case 129:
   break;


  case 128:
  default:
   This->disconnect_reason = 772;


  case 130:
   CancelIo((HANDLE)This->tcp.sock);
   break;
  }


  if(!GetOverlappedResult((HANDLE)This->tcp.sock, &overlapped, &sent, TRUE))
   return False;

  total += sent;
 }

 return True;
}

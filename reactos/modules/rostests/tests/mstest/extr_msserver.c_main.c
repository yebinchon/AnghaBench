
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPTSTR ;
typedef int HANDLE ;
typedef int DWORD ;
typedef char CHAR ;
typedef scalar_t__ BOOL ;


 int CloseHandle (int ) ;
 int CreateMailslot (char*,int,int ,int *) ;
 scalar_t__ FALSE ;
 int MAILSLOT_WAIT_FOREVER ;
 scalar_t__ ReadFile (int ,char*,int,int *,int *) ;
 int printf (char*,...) ;

int main(int argc, char *argv[])
{
   HANDLE hMailslot;
   CHAR chBuf[512];
   BOOL fResult;
   DWORD cbRead;
   LPTSTR lpszMailslotName = "\\\\.\\mailslot\\mymailslot";

   hMailslot = CreateMailslot(lpszMailslotName,
         512,
         MAILSLOT_WAIT_FOREVER,
         ((void*)0));
for (;;)
{
   fResult = ReadFile(hMailslot,
        chBuf,
        512,
        &cbRead,
        ((void*)0));
   if (fResult == FALSE)
     {
 printf("ReadFile() failed!\n");
 CloseHandle(hMailslot);
 return 0;
     }

   printf("Data read: %s\n", chBuf);
}

   CloseHandle(hMailslot);

   return 0;
}

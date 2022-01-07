
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef char* LPSTR ;
typedef int LPSECURITY_ATTRIBUTES ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (char*,int ,int ,int ,int ,int ,scalar_t__) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int WriteFile (scalar_t__,char*,int,int*,int *) ;
 int printf (char*,...) ;
 scalar_t__ strlen (char*) ;

int main(int argc, char *argv[])
{
   HANDLE hMailslot;
   LPSTR lpszMailslotName = "\\\\.\\MAILSLOT\\mymailslot";
   LPSTR lpszTestMessage = "Mailslot test message!";
   DWORD cbLength, cbWritten;

   hMailslot = CreateFile(lpszMailslotName,
     GENERIC_WRITE,
     FILE_SHARE_READ,
     (LPSECURITY_ATTRIBUTES)((void*)0),
     OPEN_EXISTING,
     FILE_ATTRIBUTE_NORMAL,
     (HANDLE)((void*)0));
   printf("hMailslot %x\n", (DWORD)hMailslot);
   if (hMailslot == INVALID_HANDLE_VALUE)
     {
 printf("CreateFile() failed\n");
 return 0;
     }

   cbLength = (ULONG)strlen(lpszTestMessage)+1;

   WriteFile(hMailslot,
      lpszTestMessage,
      cbLength,
      &cbWritten,
      ((void*)0));

   CloseHandle(hMailslot);

   return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NTSTATUS ;
typedef int HANDLE ;
typedef int CHAR ;


 int CloseHandle (int) ;
 int CreateInitialSystemToken (int*) ;
 int DisplayToken (int) ;
 int EnablePrivilege (int ) ;
 int GetCurrentProcess () ;
 scalar_t__ NT_SUCCESS (int) ;
 int SE_CREATE_TOKEN_NAME ;
 int TOKEN_QUERY ;
 int TOKEN_QUERY_SOURCE ;
 int ZwOpenProcessToken (int ,int,int*) ;
 int gets (int *) ;
 int printf (char*,...) ;

int
main(int argc, char* argv[])
{
 NTSTATUS Status;
 HANDLE hSystemToken;
 CHAR buffer[512];
 HANDLE hOurToken;

        printf("Current process Token:\n");

        Status=ZwOpenProcessToken(GetCurrentProcess(), TOKEN_QUERY|TOKEN_QUERY_SOURCE, &hOurToken);
 if ( NT_SUCCESS(Status) )
 {
   DisplayToken(hOurToken);
   CloseHandle(hOurToken);
 }
 else
 {
   printf("ZwOpenProcessToken() failed: 0x%08x\n", Status);
 }







 Status = CreateInitialSystemToken(&hSystemToken);
 if ( NT_SUCCESS(Status) )
 {
  printf("System Token: 0x%08x\n", hSystemToken);
  DisplayToken(hSystemToken);
  CloseHandle(hSystemToken);
 }
 else
 {
  printf("CreateInitialSystemToken() return: 0x%08x\n", Status);
 }

 printf("press return");
 gets(buffer);

 return 0;
}

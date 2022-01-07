
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UNICODE_STRING ;
typedef scalar_t__ ULONG ;
struct TYPE_7__ {scalar_t__ DataSize; scalar_t__ MessageSize; } ;
struct TYPE_6__ {TYPE_4__ Header; scalar_t__ Data; } ;
typedef TYPE_1__ SECURITY_QUALITY_OF_SERVICE ;
typedef int NTSTATUS ;
typedef int LPC_MESSAGE ;
typedef TYPE_1__ LPC_MAX_MESSAGE ;
typedef int HANDLE ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int GetCommandLineA () ;
 char* MyName ;
 int NT_SUCCESS (int) ;
 int NtClose (int) ;
 int NtConnectPort (int*,int *,TYPE_1__*,int ,int ,int ,int *,scalar_t__*) ;
 int NtRequestPort (int,TYPE_4__*) ;
 int ROS_STRING_INITIALIZER (int ) ;
 int Sleep (int) ;
 char* TEST_PORT_NAME ;
 int TEST_PORT_NAME_U ;
 int ZeroMemory (TYPE_1__*,int) ;
 int printf (char*,char*,...) ;
 int strcpy (scalar_t__,int ) ;
 scalar_t__ strlen (scalar_t__) ;

int main(int argc, char* argv[])
{
   UNICODE_STRING PortName = ROS_STRING_INITIALIZER(TEST_PORT_NAME_U);
   NTSTATUS Status;
   HANDLE PortHandle;
   LPC_MAX_MESSAGE Request;
   ULONG ConnectInfo;
   ULONG ConnectInfoLength = 0;
   SECURITY_QUALITY_OF_SERVICE Sqos;

   printf("%s: Lpc test client\n", MyName);

   printf("%s: Connecting to port \"%s\"...\n", MyName, TEST_PORT_NAME);
   ConnectInfoLength = 0;
   ZeroMemory (& Sqos, sizeof Sqos);
   Status = NtConnectPort(&PortHandle,
     &PortName,
     & Sqos,
     0,
     0,
     0,
     ((void*)0),
     &ConnectInfoLength);
   if (!NT_SUCCESS(Status))
     {
 printf("%s: NtConnectPort() failed with status = 0x%08X.\n", MyName, Status);
 return EXIT_FAILURE;
     }

   printf("%s: Connected to \"%s\" with anonymous port 0x%x.\n", MyName, TEST_PORT_NAME, PortHandle);

   ZeroMemory(& Request, sizeof Request);
   strcpy(Request.Data, GetCommandLineA());
   Request.Header.DataSize = strlen(Request.Data);
   Request.Header.MessageSize = sizeof(LPC_MESSAGE) +
     Request.Header.DataSize;

   printf("%s: Sending to port 0x%x message \"%s\"...\n",
          MyName,
          PortHandle,
   (char *) Request.Data);
   Status = NtRequestPort(PortHandle,
     &Request.Header);
   if (!NT_SUCCESS(Status))
     {
 printf("%s: NtRequestPort(0x%x) failed with status = 0x%8X.\n",
               MyName,
               PortHandle,
        Status);
 return EXIT_FAILURE;
     }

   printf("%s: Sending datagram to port 0x%x succeeded.\n", MyName, PortHandle);

   Sleep(2000);

   printf("%s: Disconnecting...", MyName);
   NtClose (PortHandle);

   return EXIT_SUCCESS;
}

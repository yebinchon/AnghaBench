
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int * HINSTANCE ;


 int * CreatePort ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int FreeLibrary (int *) ;
 scalar_t__ GetProcAddress (int *,char*) ;
 int * LoadLibrary (char*) ;
 int * QueryObject ;
 int TryCreatePort (char*) ;
 int * YieldExecution ;
 int exit (int) ;
 int printf (char*,...) ;

main( int argc, char * argv[] )
{
 HINSTANCE ntdll;

 if (argc != 2)
 {
  printf("WNT LPC Port Creator\n");
  printf("Usage: %s [port_name]\n",argv[0]);
  exit(EXIT_FAILURE);
 }
 printf("LoadLibrary(NTDLL)\n");
 ntdll = LoadLibrary("NTDLL");
 if (ntdll == ((void*)0))
 {
  printf("Could not load NTDLL\n");
  return EXIT_FAILURE;
 }
 printf("GetProcAddress(NTDLL.NtCreatePort)\n");
 CreatePort = (VOID*) GetProcAddress(
     ntdll,
     "NtCreatePort"
     );
 if (CreatePort == ((void*)0))
 {
  FreeLibrary(ntdll);
  printf("Could not find NTDLL.NtCreatePort\n");
  return EXIT_FAILURE;
 }
 printf("GetProcAddress(NTDLL.NtQueryObject)\n");
 QueryObject = (VOID*) GetProcAddress(
     ntdll,
     "NtQueryObject"
     );
 if (QueryObject == ((void*)0))
 {
  FreeLibrary(ntdll);
  printf("Could not find NTDLL.NtQueryObject\n");
  return EXIT_FAILURE;
 }
 printf("GetProcAddress(NTDLL.NtYieldExecution)\n");
 YieldExecution = (VOID*) GetProcAddress(
     ntdll,
     "NtYieldExecution"
     );
 if (YieldExecution == ((void*)0))
 {
  FreeLibrary(ntdll);
  printf("Could not find NTDLL.NtYieldExecution\n");
  return EXIT_FAILURE;
 }
 printf("TryCreatePort(%s)\n",argv[1]);
 TryCreatePort(argv[1]);
 printf("Done\n");
 return EXIT_SUCCESS;
}

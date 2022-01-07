
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int * PETHREAD ;
typedef int* PCHAR ;


 int * GspDbgThread ;
 int GspFindThread (int*,int **) ;
 char* GspOutBuffer ;
 int * GspRunThread ;
 int ObDereferenceObject (int *) ;
 int ObReferenceObject (int *) ;
 int * PsGetCurrentThread () ;

VOID
GspSetThread(PCHAR Request)
{
  PETHREAD ThreadInfo;
  PCHAR ptr = &Request[1];

  switch (Request[0])
  {
    case 'c':
      if (GspFindThread(ptr, &ThreadInfo))
        {
          GspOutBuffer[0] = 'O';
          GspOutBuffer[1] = 'K';

          if (((void*)0) != GspRunThread)
            {
              ObDereferenceObject(GspRunThread);
            }
          GspRunThread = ThreadInfo;
          if (((void*)0) != GspRunThread)
            {
              ObReferenceObject(GspRunThread);
            }
        }
      else
        {
          GspOutBuffer[0] = 'E';
        }
      break;
    case 'g':
      if (GspFindThread(ptr, &ThreadInfo))
        {
          GspOutBuffer[0] = 'O';
          GspOutBuffer[1] = 'K';

          if (((void*)0) != GspDbgThread)
            {
              ObDereferenceObject(GspDbgThread);
            }

          if (ThreadInfo == PsGetCurrentThread())
            {
              GspDbgThread = ((void*)0);
              ObDereferenceObject(ThreadInfo);
            }
          else
            {
              GspDbgThread = ThreadInfo;
            }
        }
      else
        {
          GspOutBuffer[0] = 'E';
        }
      break;
    default:
      break;
  }
}

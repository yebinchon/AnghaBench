#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/ * PETHREAD ;
typedef  int* PCHAR ;

/* Variables and functions */
 int /*<<< orphan*/ * GspDbgThread ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ **) ; 
 char* GspOutBuffer ; 
 int /*<<< orphan*/ * GspRunThread ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 

VOID
FUNC4(PCHAR Request)
{
  PETHREAD ThreadInfo;
  PCHAR ptr = &Request[1];

  switch (Request[0])
  {
    case 'c': /* Run thread */
      if (FUNC0(ptr, &ThreadInfo))
        {
          GspOutBuffer[0] = 'O';
          GspOutBuffer[1] = 'K';

          if (NULL != GspRunThread)
            {
              FUNC1(GspRunThread);
            }
          GspRunThread = ThreadInfo;
          if (NULL != GspRunThread)
            {
              FUNC2(GspRunThread);
            }
        }
      else
        {
          GspOutBuffer[0] = 'E';
        }
      break;
    case 'g': /* Debug thread */
      if (FUNC0(ptr, &ThreadInfo))
        {
          GspOutBuffer[0] = 'O';
          GspOutBuffer[1] = 'K';

          if (NULL != GspDbgThread)
            {
              FUNC1(GspDbgThread);
            }

          if (ThreadInfo == FUNC3())
            {
              GspDbgThread = NULL;
              FUNC1(ThreadInfo);
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
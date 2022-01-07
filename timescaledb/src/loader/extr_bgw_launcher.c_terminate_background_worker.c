
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BackgroundWorkerHandle ;


 int TerminateBackgroundWorker (int *) ;

__attribute__((used)) static void
terminate_background_worker(BackgroundWorkerHandle *handle)
{
 if (handle == ((void*)0))
  return;
 else
  TerminateBackgroundWorker(handle);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int MSG ;


 int DispatchMessage (int *) ;
 int PM_REMOVE ;
 scalar_t__ PeekMessage (int *,int *,int ,int ,int ) ;
 int TranslateAccelerator (int ,int ,int *) ;
 int TranslateMDISysAccel (int ,int *) ;
 int TranslateMessage (int *) ;
 int hAccel ;
 int hwndFrame ;
 int hwndMDIClient ;

VOID
wfYield()
{
   MSG msg;

   while (PeekMessage(&msg, ((void*)0), 0, 0, PM_REMOVE)) {
      if (!TranslateMDISysAccel(hwndMDIClient, &msg) &&
         (!hwndFrame || !TranslateAccelerator(hwndFrame, hAccel, &msg))) {

         TranslateMessage(&msg);
         DispatchMessage(&msg);
      }
   }
}

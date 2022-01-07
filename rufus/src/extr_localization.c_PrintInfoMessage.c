
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InvalidateRect (int ,int *,int ) ;
 int SetWindowTextU (int ,char*) ;
 int TRUE ;
 int hProgress ;

__attribute__((used)) static void PrintInfoMessage(char* msg) {
 SetWindowTextU(hProgress, msg);
 InvalidateRect(hProgress, ((void*)0), TRUE);
}

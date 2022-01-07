
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gCancelJmp ;
 int gGotSig ;
 scalar_t__ gMayCancelJmp ;
 int longjmp (int ,int) ;
 int siglongjmp (int ,int) ;

void
Cancel(int sigNum)
{
 if (gMayCancelJmp != 0) {
  gGotSig = sigNum;
  gMayCancelJmp = 0;



  longjmp(gCancelJmp, 1);

 }
}

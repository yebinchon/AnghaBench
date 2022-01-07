
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int msg; } ;
typedef TYPE_1__* ResponsePtr ;
typedef int Response ;


 int InitLineList (int *) ;
 int SZ (int) ;
 scalar_t__ calloc (int ,int) ;

ResponsePtr
InitResponse(void)
{
 ResponsePtr rp;

 rp = (ResponsePtr) calloc(SZ(1), sizeof(Response));
 if (rp != ((void*)0))
  InitLineList(&rp->msg);
 return (rp);
}

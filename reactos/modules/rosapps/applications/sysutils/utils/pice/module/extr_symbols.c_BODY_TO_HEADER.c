
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Type; } ;
typedef int PVOID ;
typedef int POBJECT_HEADER ;
typedef TYPE_1__* PCOMMON_BODY_HEADER ;


 int CONTAINING_RECORD (int *,int ,int ) ;
 int OBJECT_HEADER ;
 int Type ;

POBJECT_HEADER BODY_TO_HEADER(PVOID body)
{
   PCOMMON_BODY_HEADER chdr = (PCOMMON_BODY_HEADER)body;
   return(CONTAINING_RECORD((&(chdr->Type)),OBJECT_HEADER,Type));
}

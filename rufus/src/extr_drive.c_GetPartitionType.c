
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; char const* name; } ;
typedef scalar_t__ BYTE ;


 int ARRAYSIZE (TYPE_1__*) ;
 TYPE_1__* msdos_systypes ;

const char* GetPartitionType(BYTE Type)
{
 int i;
 for (i=0; i<ARRAYSIZE(msdos_systypes); i++) {
  if (msdos_systypes[i].type == Type)
   return msdos_systypes[i].name;
 }
 return "Unknown";
}

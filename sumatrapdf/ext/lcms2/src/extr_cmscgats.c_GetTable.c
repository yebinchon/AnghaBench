
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nTable; scalar_t__ TablesCount; int * Tab; } ;
typedef TYPE_1__ cmsIT8 ;
typedef int cmsContext ;
typedef int TABLE ;


 int SynError (int ,TYPE_1__*,char*,scalar_t__) ;

__attribute__((used)) static
TABLE* GetTable(cmsContext ContextID, cmsIT8* it8)
{
   if ((it8 -> nTable >= it8 ->TablesCount)) {

           SynError(ContextID, it8, "Table %d out of sequence", it8 -> nTable);
           return it8 -> Tab;
   }

   return it8 ->Tab + it8 ->nTable;
}

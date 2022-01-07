
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qsort_proc_t ;
typedef int Command ;


 scalar_t__ CommandSortCmp ;
 int gCommands ;
 int gNumCommands ;
 int qsort (int ,int ,int,int ) ;

void
InitCommandList(void)
{
 qsort(gCommands, gNumCommands, sizeof(Command), (qsort_proc_t) CommandSortCmp);
}

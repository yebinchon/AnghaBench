
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int VOID ;


 int EmulatorContext ;
 int Fast486ExecuteAt (int *,int ,int ) ;

VOID CpuExecute(WORD Segment, WORD Offset)
{

    Fast486ExecuteAt(&EmulatorContext, Segment, Offset);
}

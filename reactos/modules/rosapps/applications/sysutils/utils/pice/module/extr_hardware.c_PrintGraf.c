
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ULONG ;
typedef int UCHAR ;
struct TYPE_2__ {int (* PrintGraf ) (int ,int ,int ) ;} ;


 TYPE_1__ ohandlers ;
 int stub1 (int ,int ,int ) ;

void PrintGraf(ULONG x,ULONG y,UCHAR c)
{
    ohandlers.PrintGraf(x,y,c);
}

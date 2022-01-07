
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int USHORT ;
struct TYPE_2__ {int (* CopyLineTo ) (int ,int ) ;} ;


 TYPE_1__ ohandlers ;
 int stub1 (int ,int ) ;

void CopyLineTo(USHORT dest,USHORT src)
{
    ohandlers.CopyLineTo(dest,src);
}

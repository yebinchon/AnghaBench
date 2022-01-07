
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {long tv_sec; long tv_usec; } ;
struct TYPE_6__ {TYPE_1__ timeout; } ;
typedef TYPE_2__* SelectSetPtr ;
typedef int SelectSet ;


 int memset (TYPE_2__* const,int ,int) ;

void
SelectSetInit(SelectSetPtr const ssp, const double timeout)
{
 double i;
 long l;




 memset(ssp, 0, sizeof(SelectSet));
 l = (long) timeout;
 i = (double) l;
 ssp->timeout.tv_sec = l;
 ssp->timeout.tv_usec = (long) ((timeout - i) * 1000000.0);
}

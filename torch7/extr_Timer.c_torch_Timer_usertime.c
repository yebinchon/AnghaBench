
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double tv_usec; scalar_t__ tv_sec; } ;
struct rusage {TYPE_1__ ru_utime; } ;
typedef scalar_t__ TimeType ;


 int RUSAGE_SELF ;
 int getrusage (int ,struct rusage*) ;
 scalar_t__ torch_Timer_realtime () ;

__attribute__((used)) static TimeType torch_Timer_usertime()
{



  struct rusage current;
  getrusage(RUSAGE_SELF, &current);
  return (current.ru_utime.tv_sec + current.ru_utime.tv_usec/1000000.0);

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ev_type { ____Placeholder_ev_type } ev_type ;


 int TEVSZ ;
 int abort () ;
 int mevent_delete (int ) ;
 int rdtsc () ;
 int * tevbuf ;
 int tevp ;
 int timer_print () ;

__attribute__((used)) static void
timer_callback(int fd, enum ev_type type, void *param)
{
 static int i;

 if (i >= TEVSZ)
  abort();

 tevbuf[i++] = rdtsc();

 if (i == TEVSZ) {
  mevent_delete(tevp);
  timer_print();
 }
}

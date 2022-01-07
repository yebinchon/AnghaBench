
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Window ;
struct TYPE_3__ {int wnd; int display; } ;
typedef TYPE_1__ RDPCLIENT ;


 int XQueryPointer (int ,int ,int *,int *,int*,int*,int*,int*,unsigned int*) ;

unsigned int
read_keyboard_state(RDPCLIENT * This)
{



 unsigned int state;
 Window wdummy;
 int dummy;

 XQueryPointer(This->display, This->wnd, &wdummy, &wdummy, &dummy, &dummy, &dummy, &dummy, &state);
 return state;

}

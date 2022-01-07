
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FAIL ;
 int OK ;
 int emscripten_sleep (int) ;
 scalar_t__ input_available () ;

int
gui_mch_wait_for_chars(int wtime)
{
    if(input_available())
        return OK;

    int t = 0;
    int step = 10;
    while(1)
    {
        emscripten_sleep(step);
        if(input_available())
            return OK;
        t += step;
        if((wtime > -1) && (t >= wtime))
            return FAIL;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gpointer ;
typedef int gint ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static gint
input_timer_cb(gpointer data)
{
    int *timed_out = (int *) data;


    *timed_out = TRUE;

    return FALSE;
}

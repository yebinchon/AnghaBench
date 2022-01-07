
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * gpointer ;
typedef int WTEvent ;


 int wt_event_free (int *) ;

__attribute__((used)) static void free_event_cb (gpointer data, gpointer user_data)
{
    WTEvent *event = data;
    wt_event_free (event);
}

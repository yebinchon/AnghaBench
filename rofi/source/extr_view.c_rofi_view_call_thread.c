
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* callback ) (TYPE_1__*,scalar_t__) ;} ;
typedef TYPE_1__ thread_state ;
typedef scalar_t__ gpointer ;


 int stub1 (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void rofi_view_call_thread ( gpointer data, gpointer user_data )
{
    thread_state *t = (thread_state *) data;
    t->callback ( t, user_data );
}

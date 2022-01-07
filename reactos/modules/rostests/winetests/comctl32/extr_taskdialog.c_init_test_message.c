
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {int flags; scalar_t__ stage; int id; int lParam; int wParam; int message; } ;
typedef int WPARAM ;
typedef int UINT ;
typedef int LPARAM ;


 int WM_TD_CALLBACK ;
 int id ;
 int lparam ;
 int sent ;
 int wparam ;

__attribute__((used)) static void init_test_message(UINT message, WPARAM wParam, LPARAM lParam, struct message *msg)
{
    msg->message = WM_TD_CALLBACK;
    msg->flags = sent|wparam|lparam|id;
    msg->wParam = wParam;
    msg->lParam = lParam;
    msg->id = message;
    msg->stage = 0;
}

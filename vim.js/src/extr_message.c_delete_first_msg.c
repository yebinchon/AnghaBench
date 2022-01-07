
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_hist {struct msg_hist* msg; struct msg_hist* next; } ;


 int FAIL ;
 int OK ;
 struct msg_hist* first_msg_hist ;
 int * last_msg_hist ;
 scalar_t__ msg_hist_len ;
 int vim_free (struct msg_hist*) ;

int
delete_first_msg()
{
    struct msg_hist *p;

    if (msg_hist_len <= 0)
 return FAIL;
    p = first_msg_hist;
    first_msg_hist = p->next;
    if (first_msg_hist == ((void*)0))
 last_msg_hist = ((void*)0);
    vim_free(p->msg);
    vim_free(p);
    --msg_hist_len;
    return OK;
}

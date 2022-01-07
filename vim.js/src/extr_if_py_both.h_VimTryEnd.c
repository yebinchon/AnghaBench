
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ value; } ;


 void* FALSE ;
 scalar_t__ PyErr_Occurred () ;
 int PyErr_SetNone (int ) ;
 int PyErr_SetVim (char*) ;
 int PyExc_KeyboardInterrupt ;
 TYPE_1__* current_exception ;
 void* did_emsg ;
 void* did_throw ;
 int discard_current_exception () ;
 void* got_int ;
 void* need_rethrow ;
 int trylevel ;

__attribute__((used)) static int
VimTryEnd(void)
{
    --trylevel;



    did_emsg = FALSE;

    if (got_int)
    {
 if (current_exception != ((void*)0))
     discard_current_exception();
 else
     need_rethrow = did_throw = FALSE;
 got_int = FALSE;
 PyErr_SetNone(PyExc_KeyboardInterrupt);
 return -1;
    }
    else if (!did_throw)
 return (PyErr_Occurred() ? -1 : 0);

    else if (PyErr_Occurred())
    {
 if (current_exception != ((void*)0))
     discard_current_exception();
 else
     need_rethrow = did_throw = FALSE;
 return -1;
    }

    else
    {
 PyErr_SetVim((char *)current_exception->value);
 discard_current_exception();
 return -1;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ml_mfp; } ;
struct TYPE_7__ {TYPE_2__ b_ml; struct TYPE_7__* b_next; } ;
typedef TYPE_3__ buf_T ;
struct TYPE_5__ {int * mf_fname; } ;


 int FALSE ;
 int IObuff ;
 int OUT_STR (char*) ;
 int TRUE ;
 TYPE_3__* firstbuf ;
 int getout (int) ;
 int ml_close_all (int ) ;
 int ml_close_notmod () ;
 int ml_sync_all (int ,int ) ;
 int out_flush () ;
 int out_str (int ) ;
 int prepare_to_exit () ;
 int really_exiting ;
 int screen_start () ;

void
preserve_exit()
{
    buf_T *buf;

    prepare_to_exit();



    really_exiting = TRUE;

    out_str(IObuff);
    screen_start();
    out_flush();

    ml_close_notmod();

    for (buf = firstbuf; buf != ((void*)0); buf = buf->b_next)
    {
 if (buf->b_ml.ml_mfp != ((void*)0) && buf->b_ml.ml_mfp->mf_fname != ((void*)0))
 {
     OUT_STR("Vim: preserving files...\n");
     screen_start();
     out_flush();
     ml_sync_all(FALSE, FALSE);
     break;
 }
    }

    ml_close_all(FALSE);

    OUT_STR("Vim: Finished.\n");

    getout(1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PTYForward ;


 int * mfree (int *) ;
 int pty_forward_disconnect (int *) ;

PTYForward *pty_forward_free(PTYForward *f) {
        pty_forward_disconnect(f);
        return mfree(f);
}

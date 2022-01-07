
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Varlink ;


 int varlink_close (int *) ;
 int varlink_flush (int *) ;
 int * varlink_unref (int *) ;

Varlink* varlink_flush_close_unref(Varlink *v) {

        if (!v)
                return ((void*)0);

        (void) varlink_flush(v);
        (void) varlink_close(v);

        return varlink_unref(v);
}

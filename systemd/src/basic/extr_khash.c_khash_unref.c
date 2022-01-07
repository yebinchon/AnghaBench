
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int algorithm; int fd; } ;
typedef TYPE_1__ khash ;


 int free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int safe_close (int ) ;

khash* khash_unref(khash *h) {
        if (!h)
                return ((void*)0);

        safe_close(h->fd);
        free(h->algorithm);
        return mfree(h);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int source; int fd; } ;
typedef TYPE_1__ PortableMetadata ;


 int free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int safe_close (int ) ;

PortableMetadata *portable_metadata_unref(PortableMetadata *i) {
        if (!i)
                return ((void*)0);

        safe_close(i->fd);
        free(i->source);

        return mfree(i);
}

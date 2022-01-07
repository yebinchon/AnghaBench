
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state_file; } ;
typedef TYPE_1__ StdoutStream ;


 int stdout_stream_free (TYPE_1__*) ;
 int unlink (scalar_t__) ;

void stdout_stream_destroy(StdoutStream *s) {
        if (!s)
                return;

        if (s->state_file)
                (void) unlink(s->state_file);

        stdout_stream_free(s);
}

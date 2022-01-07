
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; int * data; } ;
struct stats {TYPE_1__ buf; } ;


 int ASSERT (int ) ;
 int nc_free (int *) ;

__attribute__((used)) static void
stats_destroy_buf(struct stats *st)
{
    if (st->buf.size != 0) {
        ASSERT(st->buf.data != ((void*)0));
        nc_free(st->buf.data);
        st->buf.size = 0;
    }
}

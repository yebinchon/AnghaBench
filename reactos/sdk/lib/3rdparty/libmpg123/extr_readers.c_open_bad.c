
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int filelen; int buffer; scalar_t__ flags; } ;
struct TYPE_5__ {TYPE_1__ rdat; int * rd; int icy; } ;
typedef TYPE_2__ mpg123_handle ;


 int bad_reader ;
 int bc_init (int *) ;
 int clear_icy (int *) ;
 int debug (char*) ;

void open_bad(mpg123_handle *mh)
{
 debug("open_bad");

 clear_icy(&mh->icy);

 mh->rd = &bad_reader;
 mh->rdat.flags = 0;

 bc_init(&mh->rdat.buffer);

 mh->rdat.filelen = -1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; scalar_t__ filepos; scalar_t__ filelen; int buffer; } ;
struct TYPE_5__ {TYPE_1__ rdat; } ;
typedef TYPE_2__ mpg123_handle ;


 int READER_BUFFERED ;
 int bc_fill_pool (int *) ;
 int bc_init (int *) ;

__attribute__((used)) static int feed_init(mpg123_handle *fr)
{
 bc_init(&fr->rdat.buffer);
 bc_fill_pool(&fr->rdat.buffer);
 fr->rdat.filelen = 0;
 fr->rdat.filepos = 0;
 fr->rdat.flags |= READER_BUFFERED;
 return 0;
}

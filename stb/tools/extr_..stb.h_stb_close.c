
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* close ) (TYPE_1__*) ;} ;
typedef TYPE_1__ stbfile ;


 int free (TYPE_1__*) ;
 int stub1 (TYPE_1__*) ;

void stb_close(stbfile *f)
{
   f->close(f);
   free(f);
}

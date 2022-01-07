
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ pos; scalar_t__ fileoff; } ;
struct TYPE_5__ {TYPE_4__ buffer; scalar_t__ filepos; } ;
struct TYPE_6__ {TYPE_1__ rdat; } ;
typedef TYPE_2__ mpg123_handle ;


 int bc_forget (TYPE_4__*) ;

__attribute__((used)) static void buffered_forget(mpg123_handle *fr)
{
 bc_forget(&fr->rdat.buffer);
 fr->rdat.filepos = fr->rdat.buffer.fileoff + fr->rdat.buffer.pos;
}

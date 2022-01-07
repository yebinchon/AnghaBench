
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* j_common_ptr ;
struct TYPE_6__ {TYPE_1__* err; } ;
struct TYPE_5__ {int (* format_message ) (TYPE_2__*,char*) ;} ;


 int FatalError (char*) ;
 int JMSG_LENGTH_MAX ;
 int stub1 (TYPE_2__*,char*) ;

__attribute__((used)) static
void my_error_exit (j_common_ptr cinfo)
{
  char buffer[JMSG_LENGTH_MAX];

  (*cinfo->err->format_message) (cinfo, buffer);
  FatalError(buffer);
}

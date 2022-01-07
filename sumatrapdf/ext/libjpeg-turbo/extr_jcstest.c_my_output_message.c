
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* j_common_ptr ;
struct TYPE_6__ {TYPE_1__* err; } ;
struct TYPE_5__ {int (* format_message ) (TYPE_2__*,int ) ;} ;


 int lasterror ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static void my_output_message(j_common_ptr cinfo)
{
  (*cinfo->err->format_message)(cinfo, lasterror);
}

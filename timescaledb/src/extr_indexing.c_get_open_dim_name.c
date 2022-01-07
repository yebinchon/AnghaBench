
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int column_name; } ;
struct TYPE_5__ {TYPE_1__ fd; int * partitioning; } ;
typedef TYPE_2__ Dimension ;


 char* NameStr (int ) ;

__attribute__((used)) static char *
get_open_dim_name(Dimension *dim)
{
 if (dim == ((void*)0) || dim->partitioning != ((void*)0))
  return ((void*)0);

 return NameStr(dim->fd.column_name);
}

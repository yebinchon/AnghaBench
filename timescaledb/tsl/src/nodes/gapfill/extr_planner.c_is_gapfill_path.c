
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * methods; } ;
typedef int Path ;


 int CustomPath ;
 scalar_t__ IsA (int *,int ) ;
 TYPE_1__* castNode (int ,int *) ;
 int gapfill_path_methods ;

__attribute__((used)) static inline bool
is_gapfill_path(Path *path)
{
 return IsA(path, CustomPath) && castNode(CustomPath, path)->methods == &gapfill_path_methods;
}

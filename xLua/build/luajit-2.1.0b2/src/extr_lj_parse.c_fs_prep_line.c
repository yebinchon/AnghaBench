
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pc; } ;
typedef TYPE_1__ FuncState ;
typedef int BCLine ;



__attribute__((used)) static size_t fs_prep_line(FuncState *fs, BCLine numline)
{
  return (fs->pc-1) << (numline < 256 ? 0 : numline < 65536 ? 1 : 2);
}

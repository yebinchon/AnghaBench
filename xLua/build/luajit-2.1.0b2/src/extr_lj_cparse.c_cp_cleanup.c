
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int global_State ;
struct TYPE_3__ {int sb; int L; } ;
typedef TYPE_1__ CPState ;


 int * G (int ) ;
 int lj_buf_free (int *,int *) ;

__attribute__((used)) static void cp_cleanup(CPState *cp)
{
  global_State *g = G(cp->L);
  lj_buf_free(g, &cp->sb);
}

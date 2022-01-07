
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strm_genfunc {int id; int * state; int type; } ;
typedef int strm_string ;
typedef int strm_state ;


 int STRM_PTR_GENFUNC ;
 struct strm_genfunc* malloc (int) ;

__attribute__((used)) static struct strm_genfunc*
genfunc_new(strm_state* state, strm_string id)
{
  struct strm_genfunc *gf = malloc(sizeof(struct strm_genfunc));

  if (!gf) return ((void*)0);
  gf->type = STRM_PTR_GENFUNC;
  gf->state = state;
  gf->id = id;
  return gf;
}

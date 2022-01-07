
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_text ;
typedef int fz_stroke_state ;
typedef int fz_storable ;
typedef int fz_shade ;
typedef int fz_rect ;
typedef int fz_path ;
typedef int fz_image ;
struct TYPE_4__ {int len; int size; int cs; scalar_t__ alpha; int ctm; int cmd; struct TYPE_4__* list; scalar_t__ path; scalar_t__ stroke; scalar_t__ color; scalar_t__ rect; } ;
typedef TYPE_1__ fz_display_node ;
typedef TYPE_1__ fz_display_list ;
typedef int fz_default_colorspaces ;
typedef int fz_context ;
typedef int fz_colorspace ;


 scalar_t__ ALPHA_PRESENT ;
 int CTM_CHANGE_AD ;
 int CTM_CHANGE_BC ;
 int CTM_CHANGE_EF ;
 int SIZE_IN_NODES (int) ;
 int fz_colorspace_n (int *,int *) ;
 int fz_drop_colorspace (int *,int *) ;
 int fz_drop_default_colorspaces (int *,int *) ;
 int fz_drop_image (int *,int *) ;
 int fz_drop_path (int *,int *) ;
 int fz_drop_shade (int *,int *) ;
 int fz_drop_stroke_state (int *,int *) ;
 int fz_drop_text (int *,int *) ;
 int fz_free (int *,TYPE_1__*) ;
 int fz_packed_path_size (int *) ;

__attribute__((used)) static void
fz_drop_display_list_imp(fz_context *ctx, fz_storable *list_)
{
 fz_display_list *list = (fz_display_list *)list_;
 fz_display_node *node = list->list;
 fz_display_node *node_end = list->list + list->len;
 int cs_n = 1;
 fz_colorspace *cs;

 while (node != node_end)
 {
  fz_display_node n = *node;
  fz_display_node *next = node + n.size;

  node++;
  if (n.rect)
  {
   node += SIZE_IN_NODES(sizeof(fz_rect));
  }
  switch (n.cs)
  {
  default:
  case 139:
   break;
  case 144:
  case 143:
   cs_n = 1;
   break;
  case 141:
  case 140:
   cs_n = 3;
   break;
  case 146:
  case 145:
   cs_n = 4;
   break;
  case 142:
   cs = *(fz_colorspace **)node;
   cs_n = fz_colorspace_n(ctx, cs);
   fz_drop_colorspace(ctx, cs);
   node += SIZE_IN_NODES(sizeof(fz_colorspace *));
   break;
  }
  if (n.color)
  {
   node += SIZE_IN_NODES(cs_n * sizeof(float));
  }
  if (n.alpha == ALPHA_PRESENT)
  {
   node += SIZE_IN_NODES(sizeof(float));
  }
  if (n.ctm & CTM_CHANGE_AD)
   node += SIZE_IN_NODES(2*sizeof(float));
  if (n.ctm & CTM_CHANGE_BC)
   node += SIZE_IN_NODES(2*sizeof(float));
  if (n.ctm & CTM_CHANGE_EF)
   node += SIZE_IN_NODES(2*sizeof(float));
  if (n.stroke)
  {
   fz_drop_stroke_state(ctx, *(fz_stroke_state **)node);
   node += SIZE_IN_NODES(sizeof(fz_stroke_state *));
  }
  if (n.path)
  {
   int path_size = fz_packed_path_size((fz_path *)node);
   fz_drop_path(ctx, (fz_path *)node);
   node += SIZE_IN_NODES(path_size);
  }
  switch(n.cmd)
  {
  case 130:
  case 128:
  case 135:
  case 136:
  case 129:
   fz_drop_text(ctx, *(fz_text **)node);
   break;
  case 131:
   fz_drop_shade(ctx, *(fz_shade **)node);
   break;
  case 133:
  case 132:
  case 137:
   fz_drop_image(ctx, *(fz_image **)node);
   break;
  case 138:
   fz_drop_colorspace(ctx, *(fz_colorspace **)node);
   break;
  case 134:
   fz_drop_default_colorspaces(ctx, *(fz_default_colorspaces **)node);
   break;
  }
  node = next;
 }
 fz_free(ctx, list->list);
 fz_free(ctx, list);
}

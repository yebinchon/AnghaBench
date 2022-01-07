
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int ;
typedef int u_char ;
struct layout_cell {int type; int cells; void* yoff; void* xoff; void* sy; void* sx; } ;




 int TAILQ_INSERT_TAIL (int *,struct layout_cell*,int ) ;
 int entry ;
 scalar_t__ isdigit (int ) ;
 struct layout_cell* layout_create_cell (struct layout_cell*) ;
 int layout_free_cell (struct layout_cell*) ;
 int sscanf (char const*,char*,void**,void**,void**,void**) ;

__attribute__((used)) static struct layout_cell *
layout_construct(struct layout_cell *lcparent, const char **layout)
{
 struct layout_cell *lc, *lcchild;
 u_int sx, sy, xoff, yoff;
 const char *saved;

 if (!isdigit((u_char) **layout))
  return (((void*)0));
 if (sscanf(*layout, "%ux%u,%u,%u", &sx, &sy, &xoff, &yoff) != 4)
  return (((void*)0));

 while (isdigit((u_char) **layout))
  (*layout)++;
 if (**layout != 'x')
  return (((void*)0));
 (*layout)++;
 while (isdigit((u_char) **layout))
  (*layout)++;
 if (**layout != ',')
  return (((void*)0));
 (*layout)++;
 while (isdigit((u_char) **layout))
  (*layout)++;
 if (**layout != ',')
  return (((void*)0));
 (*layout)++;
 while (isdigit((u_char) **layout))
  (*layout)++;
 if (**layout == ',') {
  saved = *layout;
  (*layout)++;
  while (isdigit((u_char) **layout))
   (*layout)++;
  if (**layout == 'x')
   *layout = saved;
 }

 lc = layout_create_cell(lcparent);
 lc->sx = sx;
 lc->sy = sy;
 lc->xoff = xoff;
 lc->yoff = yoff;

 switch (**layout) {
 case ',':
 case '}':
 case ']':
 case '\0':
  return (lc);
 case '{':
  lc->type = 129;
  break;
 case '[':
  lc->type = 128;
  break;
 default:
  goto fail;
 }

 do {
  (*layout)++;
  lcchild = layout_construct(lc, layout);
  if (lcchild == ((void*)0))
   goto fail;
  TAILQ_INSERT_TAIL(&lc->cells, lcchild, entry);
 } while (**layout == ',');

 switch (lc->type) {
 case 129:
  if (**layout != '}')
   goto fail;
  break;
 case 128:
  if (**layout != ']')
   goto fail;
  break;
 default:
  goto fail;
 }
 (*layout)++;

 return (lc);

fail:
 layout_free_cell(lc);
 return (((void*)0));
}

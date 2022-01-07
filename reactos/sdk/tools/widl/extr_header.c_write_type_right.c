
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int type_t ;
struct TYPE_2__ {int cval; } ;
typedef int FILE ;


 int FALSE ;
 int fprintf (int *,char*,...) ;
 int is_array (int *) ;
 int is_conformant_array (int *) ;
 int type_array_get_dim (int *) ;
 int * type_array_get_element (int *) ;
 int type_array_is_decl_as_ptr (int *) ;
 TYPE_1__* type_bitfield_get_bits (int *) ;
 int type_get_type (int *) ;
 scalar_t__ type_is_alias (int *) ;
 int * type_pointer_get_ref (int *) ;

void write_type_right(FILE *h, type_t *t, int is_field)
{
  if (!h) return;
  if (type_is_alias(t)) return;

  switch (type_get_type(t))
  {
  case 140:
  {
    type_t *elem = type_array_get_element(t);
    if (type_array_is_decl_as_ptr(t))
    {
      if (!type_is_alias(elem) && is_array(elem) && !type_array_is_decl_as_ptr(elem))
        fprintf(h, ")");
    }
    else
    {
      if (is_conformant_array(t))
        fprintf(h, "[%s]", is_field ? "1" : "");
      else
        fprintf(h, "[%u]", type_array_get_dim(t));
    }
    write_type_right(h, elem, FALSE);
    break;
  }
  case 131:
  {
    type_t *ref = type_pointer_get_ref(t);
    if (!type_is_alias(ref) && is_array(ref) && !type_array_is_decl_as_ptr(ref))
      fprintf(h, ")");
    write_type_right(h, ref, FALSE);
    break;
  }
  case 138:
    fprintf(h, " : %u", type_bitfield_get_bits(t)->cval);
    break;
  case 128:
  case 139:
  case 135:
  case 130:
  case 136:
  case 129:
  case 141:
  case 132:
  case 137:
  case 134:
  case 133:
    break;
  }
}

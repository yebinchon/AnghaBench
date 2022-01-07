
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uu_avl_t ;
struct TYPE_6__ {int usn_nvl; } ;
typedef TYPE_1__ us_node_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int USFIELD_LAST ;
 int USFIELD_NAME ;
 int USFIELD_TYPE ;
 char* gettext (int ) ;
 int nvlist_free (int ) ;
 int print_us_node (scalar_t__,scalar_t__,int*,int,size_t*,TYPE_1__*) ;
 int printf (char*,...) ;
 int * us_field_hdr ;
 TYPE_1__* uu_avl_first (int *) ;
 TYPE_1__* uu_avl_next (int *,TYPE_1__*) ;

__attribute__((used)) static void
print_us(boolean_t scripted, boolean_t parsable, int *fields, int types,
    size_t *width, boolean_t rmnode, uu_avl_t *avl)
{
 us_node_t *node;
 const char *col;
 int cfield = 0;
 int field;

 if (!scripted) {
  boolean_t first = B_TRUE;

  while ((field = fields[cfield]) != USFIELD_LAST) {
   col = gettext(us_field_hdr[field]);
   if (field == USFIELD_TYPE || field == USFIELD_NAME) {
    (void) printf(first ? "%-*s" : "  %-*s",
        (int)width[field], col);
   } else {
    (void) printf(first ? "%*s" : "  %*s",
        (int)width[field], col);
   }
   first = B_FALSE;
   cfield++;
  }
  (void) printf("\n");
 }

 for (node = uu_avl_first(avl); node; node = uu_avl_next(avl, node)) {
  print_us_node(scripted, parsable, fields, types, width, node);
  if (rmnode)
   nvlist_free(node->usn_nvl);
 }
}

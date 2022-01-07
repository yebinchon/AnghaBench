
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* synctex_scanner_t ;
typedef scalar_t__ synctex_node_t ;
struct TYPE_3__ {char* output; char* output_fmt; int version; int pre_unit; int pre_x_offset; int pre_y_offset; int count; double unit; double x_offset; double y_offset; int number_of_lists; scalar_t__* lists_of_friends; int sheet; int input; } ;


 int SYNCTEX_DISPLAY (int ) ;
 scalar_t__ SYNCTEX_FRIEND (scalar_t__) ;
 int SYNCTEX_LINE (scalar_t__) ;
 int SYNCTEX_TAG (scalar_t__) ;
 int printf (char*,...) ;
 char* synctex_node_isa (scalar_t__) ;

void synctex_scanner_display(synctex_scanner_t scanner) {
 if (((void*)0) == scanner) {
  return;
 }
 printf("The scanner:\noutput:%s\noutput_fmt:%s\nversion:%i\n",scanner->output,scanner->output_fmt,scanner->version);
 printf("pre_unit:%i\nx_offset:%i\ny_offset:%i\n",scanner->pre_unit,scanner->pre_x_offset,scanner->pre_y_offset);
 printf("count:%i\npost_magnification:%f\npost_x_offset:%f\npost_y_offset:%f\n",
  scanner->count,scanner->unit,scanner->x_offset,scanner->y_offset);
 printf("The input:\n");
 SYNCTEX_DISPLAY(scanner->input);
 if (scanner->count<1000) {
  printf("The sheets:\n");
  SYNCTEX_DISPLAY(scanner->sheet);
  printf("The friends:\n");
  if (scanner->lists_of_friends) {
   int i = scanner->number_of_lists;
   synctex_node_t node;
   while(i--) {
    printf("Friend index:%i\n",i);
    node = (scanner->lists_of_friends)[i];
    while(node) {
     printf("%s:%i,%i\n",
      synctex_node_isa(node),
      SYNCTEX_TAG(node),
      SYNCTEX_LINE(node)
     );
     node = SYNCTEX_FRIEND(node);
    }
   }
  }
 } else {
  printf("SyncTeX Warning: Too many objects\n");
 }
}

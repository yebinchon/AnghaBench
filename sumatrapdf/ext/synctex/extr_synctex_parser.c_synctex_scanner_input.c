
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* synctex_scanner_t ;
typedef int * synctex_node_t ;
struct TYPE_3__ {int * input; } ;



synctex_node_t synctex_scanner_input(synctex_scanner_t scanner) {
 return scanner?scanner->input:((void*)0);
}

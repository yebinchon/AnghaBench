
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* synctex_scanner_t ;
struct TYPE_3__ {char const* output; } ;



const char * synctex_scanner_get_output(synctex_scanner_t scanner) {
 return ((void*)0) != scanner && scanner->output?scanner->output:"";
}

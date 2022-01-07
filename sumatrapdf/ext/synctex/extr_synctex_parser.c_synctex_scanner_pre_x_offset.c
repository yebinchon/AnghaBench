
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* synctex_scanner_t ;
struct TYPE_3__ {int pre_x_offset; } ;



int synctex_scanner_pre_x_offset(synctex_scanner_t scanner){
 return scanner?scanner->pre_x_offset:0;
}

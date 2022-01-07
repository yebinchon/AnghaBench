
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* synctex_scanner_t ;
struct TYPE_3__ {float unit; } ;



float synctex_scanner_magnification(synctex_scanner_t scanner){
 return scanner?scanner->unit:1;
}

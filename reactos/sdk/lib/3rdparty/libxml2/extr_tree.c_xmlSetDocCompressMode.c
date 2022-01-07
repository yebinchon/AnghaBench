
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlDocPtr ;
struct TYPE_3__ {int compression; } ;



void
xmlSetDocCompressMode (xmlDocPtr doc, int mode) {
    if (doc == ((void*)0)) return;
    if (mode < 0) doc->compression = 0;
    else if (mode > 9) doc->compression = 9;
    else doc->compression = mode;
}

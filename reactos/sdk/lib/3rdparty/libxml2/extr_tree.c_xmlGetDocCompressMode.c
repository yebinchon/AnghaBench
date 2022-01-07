
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int compression; } ;
typedef TYPE_1__ xmlDoc ;



int
xmlGetDocCompressMode (const xmlDoc *doc) {
    if (doc == ((void*)0)) return(-1);
    return(doc->compression);
}

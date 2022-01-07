
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlBufPtr ;
struct TYPE_3__ {int alloc; } ;


 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;

int
xmlBufGetAllocationScheme(xmlBufPtr buf) {
    if (buf == ((void*)0)) {




        return(-1);
    }
    return(buf->alloc);
}

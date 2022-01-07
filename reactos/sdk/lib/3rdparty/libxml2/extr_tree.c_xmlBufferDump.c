
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xmlChar ;
typedef TYPE_1__* xmlBufferPtr ;
struct TYPE_3__ {int use; int * content; } ;
typedef int FILE ;


 int fwrite (int *,int,int ,int *) ;
 int * stdout ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;

int
xmlBufferDump(FILE *file, xmlBufferPtr buf) {
    int ret;

    if (buf == ((void*)0)) {




 return(0);
    }
    if (buf->content == ((void*)0)) {




 return(0);
    }
    if (file == ((void*)0))
 file = stdout;
    ret = fwrite(buf->content, sizeof(xmlChar), buf->use, file);
    return(ret);
}

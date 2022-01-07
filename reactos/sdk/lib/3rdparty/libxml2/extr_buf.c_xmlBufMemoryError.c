
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlBufPtr ;
struct TYPE_3__ {scalar_t__ error; } ;


 scalar_t__ XML_ERR_NO_MEMORY ;
 int XML_FROM_BUFFER ;
 int __xmlSimpleError (int ,scalar_t__,int *,int *,char const*) ;

__attribute__((used)) static void
xmlBufMemoryError(xmlBufPtr buf, const char *extra)
{
    __xmlSimpleError(XML_FROM_BUFFER, XML_ERR_NO_MEMORY, ((void*)0), ((void*)0), extra);
    if ((buf) && (buf->error == 0))
        buf->error = XML_ERR_NO_MEMORY;
}

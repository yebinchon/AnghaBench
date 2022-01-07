
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlCharEncodingHandler ;
typedef int xmlBufferPtr ;


 int xmlCharEncFirstLineInt (int *,int ,int ,int) ;

int
xmlCharEncFirstLine(xmlCharEncodingHandler *handler, xmlBufferPtr out,
                 xmlBufferPtr in) {
    return(xmlCharEncFirstLineInt(handler, out, in, -1));
}

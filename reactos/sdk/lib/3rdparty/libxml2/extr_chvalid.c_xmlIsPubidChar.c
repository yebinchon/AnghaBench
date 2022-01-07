
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xmlIsPubidCharQ (unsigned int) ;

int
xmlIsPubidChar(unsigned int ch) {
    return(xmlIsPubidCharQ(ch));
}

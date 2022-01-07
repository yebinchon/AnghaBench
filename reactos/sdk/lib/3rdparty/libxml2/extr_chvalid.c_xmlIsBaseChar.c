
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xmlIsBaseCharQ (unsigned int) ;

int
xmlIsBaseChar(unsigned int ch) {
    return(xmlIsBaseCharQ(ch));
}

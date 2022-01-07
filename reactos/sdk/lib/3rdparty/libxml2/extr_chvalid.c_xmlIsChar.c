
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xmlIsCharQ (unsigned int) ;

int
xmlIsChar(unsigned int ch) {
    return(xmlIsCharQ(ch));
}

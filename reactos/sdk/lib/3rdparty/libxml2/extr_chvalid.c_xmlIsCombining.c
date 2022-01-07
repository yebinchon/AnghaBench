
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xmlIsCombiningQ (unsigned int) ;

int
xmlIsCombining(unsigned int ch) {
    return(xmlIsCombiningQ(ch));
}

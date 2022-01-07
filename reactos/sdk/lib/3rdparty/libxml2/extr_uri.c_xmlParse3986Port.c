
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlURIPtr ;
struct TYPE_3__ {unsigned int port; } ;


 unsigned int INT_MAX ;
 scalar_t__ ISA_DIGIT (char const*) ;

__attribute__((used)) static int
xmlParse3986Port(xmlURIPtr uri, const char **str)
{
    const char *cur = *str;
    unsigned port = 0;

    if (ISA_DIGIT(cur)) {
 while (ISA_DIGIT(cur)) {
     port = port * 10 + (*cur - '0');

     cur++;
 }
 if (uri != ((void*)0))
     uri->port = port & INT_MAX;
 *str = cur;
 return(0);
    }
    return(1);
}

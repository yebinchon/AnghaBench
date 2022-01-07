
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalpha (char) ;
 int printf (char*,char) ;

void error_unknown_switch(char chu, char *s)
{
    if (isalpha(chu)) {
        printf("Undefined switch /%c!\n", chu);
    } else {
        printf("Alphabetic character is expected after '%c' "
               "in switch specification\n", *(s - 1));
    }

}

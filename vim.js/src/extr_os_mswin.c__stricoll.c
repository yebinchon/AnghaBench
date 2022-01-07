
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcoll (char*,char*) ;
 int strxfrm (char*,char*,int) ;

int _stricoll(char *a, char *b)
{

    char a_buff[512], b_buff[512];
    strxfrm(a_buff, a, 512);
    strxfrm(b_buff, b, 512);
    return strcoll(a_buff, b_buff);
}

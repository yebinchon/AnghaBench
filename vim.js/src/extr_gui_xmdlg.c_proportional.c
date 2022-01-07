
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Boolean ;


 int TEMP_BUF_SIZE ;
 int get_part (char*,int,char*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static Boolean
proportional(char *font)
{
    char buf[TEMP_BUF_SIZE];

    get_part(font, 11, buf);

    return !strcmp(buf, "p") || !strcmp(buf, "P");
}

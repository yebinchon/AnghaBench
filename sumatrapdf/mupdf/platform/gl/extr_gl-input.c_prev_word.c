
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ myisalnum (char*) ;
 char* prev_char (char*,char*) ;

__attribute__((used)) static char *prev_word(char *p, char *start)
{
 while (p > start && !myisalnum(prev_char(p, start))) p = prev_char(p, start);
 while (p > start && myisalnum(prev_char(p, start))) p = prev_char(p, start);
 return p;
}

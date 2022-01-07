
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ myisalnum (char*) ;
 char* next_char (char*) ;

__attribute__((used)) static char *next_word(char *p, char *end)
{
 while (p < end && !myisalnum(p)) p = next_char(p);
 while (p < end && myisalnum(p)) p = next_char(p);
 return p;
}

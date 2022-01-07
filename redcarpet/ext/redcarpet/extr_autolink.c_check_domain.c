
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;


 int isalnum (char) ;
 int * strchr (char*,char) ;

__attribute__((used)) static size_t
check_domain(uint8_t *data, size_t size, int allow_short)
{
 size_t i, np = 0;

 if (!isalnum(data[0]))
  return 0;

 for (i = 1; i < size - 1; ++i) {
  if (strchr(".:", data[i]) != ((void*)0)) np++;
  else if (!isalnum(data[i]) && data[i] != '-') break;
 }

 if (allow_short) {




  return i;
 } else {


  return np ? i : 0;
 }
}

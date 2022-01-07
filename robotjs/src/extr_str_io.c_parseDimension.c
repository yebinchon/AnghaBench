
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint32_t ;


 int MAX_DIMENSION_LEN ;
 int assert (int ) ;
 int atoi (char*) ;
 int isdigit (char const) ;
 int * len ;

__attribute__((used)) static uint32_t parseDimension(const uint8_t *buf, size_t buflen,
                               size_t *numlen)
{
 char num[MAX_DIMENSION_LEN + 1];
 size_t i;

 assert(buf != ((void*)0));
 assert(len != ((void*)0));
 for (i = 0; i < buflen && buf[i] != ',' && buf[i] != '\0'; ++i) {
  if (!isdigit(buf[i]) || i > MAX_DIMENSION_LEN) return 0;
  num[i] = buf[i];
 }
 num[i] = '\0';
 *numlen = i;

 return (uint32_t)atoi(num);
}

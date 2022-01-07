
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (char) ;
 scalar_t__ isupper (char) ;
 char tolower (char) ;

int RTFCharToHex(char c)
{
 if (isupper (c))
  c = tolower (c);
 if (isdigit (c))
  return (c - '0');
 return (c - 'a' + 10);
}

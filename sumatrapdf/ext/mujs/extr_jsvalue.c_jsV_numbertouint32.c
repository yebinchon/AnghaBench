
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ jsV_numbertoint32 (double) ;

unsigned int jsV_numbertouint32(double n)
{
 return (unsigned int)jsV_numbertoint32(n);
}

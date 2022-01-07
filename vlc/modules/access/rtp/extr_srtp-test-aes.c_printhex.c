
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int fputc (char,int ) ;
 int printf (char*,int) ;
 int stdout ;

__attribute__((used)) static void printhex (const void *buf, size_t len)
{
    for (size_t i = 0; i < len; i++)
        printf ("%02X", ((uint8_t *)buf)[i]);
    fputc ('\n', stdout);
}

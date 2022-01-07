
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int puts (char const*) ;

__attribute__((used)) static void fatal (const char *msg)
{
    puts (msg);
    exit (1);
}

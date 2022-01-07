
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump (int) ;
 int print (char*,int) ;

__attribute__((used)) static void dump2(int c)
{
    print("dump2 %c\n", c);
    dump(c);
}

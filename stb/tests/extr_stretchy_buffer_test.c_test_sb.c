
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sb_push (char*,char) ;

void test_sb(void)
{
   char *x = ((void*)0);
   sb_push(x, 'x');
}

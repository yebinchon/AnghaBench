
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINTF (char*,int) ;
 int exit (int) ;

__attribute__((used)) static void
err_exit(int a)
{
    DPRINTF("err_exit %%x\\n", a);
    (void)a;
    exit(a);
}

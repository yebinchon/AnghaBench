
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vatpic {int dummy; } ;


 int free (struct vatpic*) ;

void
vatpic_cleanup(struct vatpic *vatpic)
{
 free(vatpic);
}

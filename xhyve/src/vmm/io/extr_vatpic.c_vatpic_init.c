
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int dummy; } ;
struct vatpic {struct vm* vm; } ;


 int VATPIC_LOCK_INIT (struct vatpic*) ;
 int assert (struct vatpic*) ;
 int bzero (struct vatpic*,int) ;
 struct vatpic* malloc (int) ;

struct vatpic *
vatpic_init(struct vm *vm)
{
 struct vatpic *vatpic;

 vatpic = malloc(sizeof(struct vatpic));
 assert(vatpic);
 bzero(vatpic, sizeof(struct vatpic));
 vatpic->vm = vm;

 VATPIC_LOCK_INIT(vatpic);

 return (vatpic);
}

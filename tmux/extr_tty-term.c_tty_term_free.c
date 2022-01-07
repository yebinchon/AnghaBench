
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_2__ {struct tty_term* string; } ;
struct tty_term {scalar_t__ references; scalar_t__ type; struct tty_term* name; struct tty_term* codes; TYPE_1__ value; } ;


 int LIST_REMOVE (struct tty_term*,int ) ;
 scalar_t__ TTYCODE_STRING ;
 int entry ;
 int free (struct tty_term*) ;
 size_t tty_term_ncodes () ;

void
tty_term_free(struct tty_term *term)
{
 u_int i;

 if (--term->references != 0)
  return;

 LIST_REMOVE(term, entry);

 for (i = 0; i < tty_term_ncodes(); i++) {
  if (term->codes[i].type == TTYCODE_STRING)
   free(term->codes[i].value.string);
 }
 free(term->codes);

 free(term->name);
 free(term);
}

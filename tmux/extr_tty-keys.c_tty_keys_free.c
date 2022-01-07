
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int key_tree; } ;


 int tty_keys_free1 (int ) ;

void
tty_keys_free(struct tty *tty)
{
 tty_keys_free1(tty->key_tree);
}

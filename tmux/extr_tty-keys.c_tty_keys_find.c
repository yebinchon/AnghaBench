
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_key {int dummy; } ;
struct tty {int key_tree; } ;


 struct tty_key* tty_keys_find1 (int ,char const*,size_t,size_t*) ;

__attribute__((used)) static struct tty_key *
tty_keys_find(struct tty *tty, const char *buf, size_t len, size_t *size)
{
 *size = 0;
 return (tty_keys_find1(tty->key_tree, buf, len, size));
}

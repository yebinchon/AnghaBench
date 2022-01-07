
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_key {struct tty_key* right; struct tty_key* left; struct tty_key* next; } ;


 int free (struct tty_key*) ;

__attribute__((used)) static void
tty_keys_free1(struct tty_key *tk)
{
 if (tk->next != ((void*)0))
  tty_keys_free1(tk->next);
 if (tk->left != ((void*)0))
  tty_keys_free1(tk->left);
 if (tk->right != ((void*)0))
  tty_keys_free1(tk->right);
 free(tk);
}

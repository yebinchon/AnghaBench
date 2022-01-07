
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_key {char const ch; scalar_t__ key; struct tty_key* right; struct tty_key* left; struct tty_key* next; } ;


 scalar_t__ KEYC_UNKNOWN ;

__attribute__((used)) static struct tty_key *
tty_keys_find1(struct tty_key *tk, const char *buf, size_t len, size_t *size)
{

 if (len == 0)
  return (((void*)0));


 if (tk == ((void*)0))
  return (((void*)0));


 if (tk->ch == *buf) {

  buf++; len--;
  (*size)++;


  if (len == 0 || (tk->next == ((void*)0) && tk->key != KEYC_UNKNOWN))
   return (tk);


  tk = tk->next;
 } else {
  if (*buf < tk->ch)
   tk = tk->left;
  else if (*buf > tk->ch)
   tk = tk->right;
 }


 return (tty_keys_find1(tk, buf, len, size));
}

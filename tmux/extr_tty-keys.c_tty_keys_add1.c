
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_key {char ch; struct tty_key* right; struct tty_key* left; struct tty_key* next; int key; } ;
typedef int key_code ;


 int KEYC_UNKNOWN ;
 struct tty_key* xcalloc (int,int) ;

__attribute__((used)) static void
tty_keys_add1(struct tty_key **tkp, const char *s, key_code key)
{
 struct tty_key *tk;


 tk = *tkp;
 if (tk == ((void*)0)) {
  tk = *tkp = xcalloc(1, sizeof *tk);
  tk->ch = *s;
  tk->key = KEYC_UNKNOWN;
 }


 if (*s == tk->ch) {

  s++;


  if (*s == '\0') {
   tk->key = key;
   return;
  }


  tkp = &tk->next;
 } else {
  if (*s < tk->ch)
   tkp = &tk->left;
  else if (*s > tk->ch)
   tkp = &tk->right;
 }


 tty_keys_add1(tkp, s, key);
}

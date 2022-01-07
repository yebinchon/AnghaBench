
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keymap {size_t size; struct keybinding** data; } ;
struct keybinding {int request; size_t keys; int key; } ;
struct key {int dummy; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;
typedef enum request { ____Placeholder_request } request ;


 int SIZEOF_STR ;
 int SUCCESS ;
 struct keybinding* calloc (int,int) ;
 int die (char*) ;
 int error (char*,char*,char*) ;
 char* get_request_name (int) ;
 scalar_t__ keybinding_equals (struct keybinding*,struct key const*,size_t,int*) ;
 int memcpy (int ,struct key const*,int) ;
 struct keybinding** realloc (struct keybinding**,int) ;
 int string_ncopy (char*,char const*,int ) ;
 int strlen (char const*) ;

enum status_code
add_keybinding(struct keymap *table, enum request request,
        const struct key key[], size_t keys)
{
 struct keybinding *keybinding;
 char buf[SIZEOF_STR];
 bool conflict = 0;
 size_t i;

 for (i = 0; i < table->size; i++) {
  if (keybinding_equals(table->data[i], key, keys, &conflict)) {
   enum request old_request = table->data[i]->request;
   const char *old_name;

   table->data[i]->request = request;
   if (!conflict)
    return SUCCESS;

   old_name = get_request_name(old_request);
   string_ncopy(buf, old_name, strlen(old_name));
   return error("Key binding for %s and %s conflict; "
         "keys using Ctrl are case insensitive",
         buf, get_request_name(request));
  }
 }

 table->data = realloc(table->data, (table->size + 1) * sizeof(*table->data));
 keybinding = calloc(1, sizeof(*keybinding) + (sizeof(*key) * (keys - 1)));
 if (!table->data || !keybinding)
  die("Failed to allocate keybinding");

 memcpy(keybinding->key, key, sizeof(*key) * keys);
 keybinding->keys = keys;
 keybinding->request = request;
 table->data[table->size++] = keybinding;
 return SUCCESS;
}

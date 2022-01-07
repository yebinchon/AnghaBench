
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xkb_keysym_t ;
typedef int xkb_keycode_t ;
struct sway_binding {int flags; int type; TYPE_1__* syms; TYPE_1__* keys; } ;
struct keycode_matches {int count; int keycode; } ;
struct TYPE_4__ {int length; int ** items; } ;


 int BINDING_CODE ;


 int SWAY_ERROR ;
 int SWAY_INFO ;
 void* create_list () ;
 struct keycode_matches get_keycode_for_keysym (int ) ;
 int key_qsort_cmp ;
 int list_add (TYPE_1__*,int *) ;
 int list_free_items_and_destroy (TYPE_1__*) ;
 int list_qsort (TYPE_1__*,int ) ;
 int * malloc (int) ;
 int sway_log (int ,char*,...) ;

bool translate_binding(struct sway_binding *binding) {
 if ((binding->flags & BINDING_CODE) == 0) {
  return 1;
 }

 switch (binding->type) {

 case 128:
  binding->syms = binding->keys;
  binding->keys = create_list();
  break;

 case 129:
  list_free_items_and_destroy(binding->keys);
  binding->keys = create_list();
  break;
 default:
  return 1;
 }

 for (int i = 0; i < binding->syms->length; ++i) {
  xkb_keysym_t *keysym = binding->syms->items[i];
  struct keycode_matches matches = get_keycode_for_keysym(*keysym);

  if (matches.count != 1) {
   sway_log(SWAY_INFO, "Unable to convert keysym %d into"
     " a single keycode (found %d matches)",
     *keysym, matches.count);
   goto error;
  }

  xkb_keycode_t *keycode = malloc(sizeof(xkb_keycode_t));
  if (!keycode) {
   sway_log(SWAY_ERROR, "Unable to allocate memory for a keycode");
   goto error;
  }

  *keycode = matches.keycode;
  list_add(binding->keys, keycode);
 }

 list_qsort(binding->keys, key_qsort_cmp);
 binding->type = 129;
 return 1;

error:
 list_free_items_and_destroy(binding->keys);
 binding->type = 128;
 binding->keys = binding->syms;
 binding->syms = ((void*)0);
 return 0;
}

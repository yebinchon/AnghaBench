
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keymap {int dummy; } ;
struct key_combo {int member_0; int request; int member_2; struct keymap* member_1; } ;
typedef enum request { ____Placeholder_request } request ;


 int REQ_NONE ;
 int key_combo_handler ;
 char* read_prompt_incremental (char*,int,int,int ,struct key_combo*) ;

enum request
read_key_combo(struct keymap *keymap)
{
 struct key_combo combo = { REQ_NONE, keymap, 0 };
 char *value = read_prompt_incremental("", 0, 0, key_combo_handler, &combo);

 return value ? combo.request : REQ_NONE;
}

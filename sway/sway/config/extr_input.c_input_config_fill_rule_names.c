
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xkb_rule_names {int variant; int rules; int options; int model; int layout; } ;
struct input_config {int xkb_variant; int xkb_rules; int xkb_options; int xkb_model; int xkb_layout; } ;



void input_config_fill_rule_names(struct input_config *ic,
  struct xkb_rule_names *rules) {
 rules->layout = ic->xkb_layout;
 rules->model = ic->xkb_model;
 rules->options = ic->xkb_options;
 rules->rules = ic->xkb_rules;
 rules->variant = ic->xkb_variant;
}

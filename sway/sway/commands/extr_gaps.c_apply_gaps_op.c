
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gaps_op { ____Placeholder_gaps_op } gaps_op ;






__attribute__((used)) static void apply_gaps_op(int *prop, enum gaps_op op, int amount) {
 switch (op) {
 case 129:
  *prop = amount;
  break;
 case 130:
  *prop += amount;
  break;
 case 128:
  *prop -= amount;
  break;
 }
}

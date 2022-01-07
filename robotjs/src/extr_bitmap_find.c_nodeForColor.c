
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct shiftNode {int dummy; } ;
struct TYPE_3__ {struct shiftNode* uttable; } ;
typedef TYPE_1__ UTHashTable ;
typedef int MMRGBHex ;


 int HASH_FIND_INT (struct shiftNode*,int *,struct shiftNode*) ;

__attribute__((used)) static struct shiftNode *nodeForColor(UTHashTable *table,
                                      MMRGBHex color)
{
 struct shiftNode *uttable = table->uttable;
 struct shiftNode *node;
 HASH_FIND_INT(uttable, &color, node);
 return node;
}

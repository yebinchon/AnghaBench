
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wait_channel {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
wait_channel_cmp(struct wait_channel *wc1, struct wait_channel *wc2)
{
 return (strcmp(wc1->name, wc2->name));
}

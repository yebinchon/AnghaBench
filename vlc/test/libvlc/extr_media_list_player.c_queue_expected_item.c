
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct check_items_order_data {int count; void** items; } ;


 int assert (int) ;

__attribute__((used)) static inline void queue_expected_item(struct check_items_order_data *check, void *item)
{
    assert(check->count < 16);
    check->items[check->count] = item;
    check->count++;
}

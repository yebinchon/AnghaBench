
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view_history {int stack; } ;



__attribute__((used)) static bool
view_history_is_empty(struct view_history *history)
{
 return !history->stack;
}

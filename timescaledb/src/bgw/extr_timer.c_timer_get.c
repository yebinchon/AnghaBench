
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Timer ;


 int const* current_timer_implementation ;

__attribute__((used)) static inline const Timer *
timer_get()
{
 return current_timer_implementation;
}

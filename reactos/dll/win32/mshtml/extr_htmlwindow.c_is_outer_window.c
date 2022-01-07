
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* outer_window; } ;
struct TYPE_4__ {TYPE_2__ base; } ;
typedef TYPE_2__ HTMLWindow ;
typedef int BOOL ;



__attribute__((used)) static inline BOOL is_outer_window(HTMLWindow *window)
{
    return &window->outer_window->base == window;
}

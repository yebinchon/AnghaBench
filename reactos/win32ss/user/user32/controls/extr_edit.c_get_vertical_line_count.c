
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bottom; int top; } ;
struct TYPE_5__ {int line_height; TYPE_1__ format_rect; } ;
typedef int INT ;
typedef TYPE_2__ EDITSTATE ;


 int max (int,int) ;

__attribute__((used)) static inline INT get_vertical_line_count(EDITSTATE *es)
{
 INT vlc = (es->format_rect.bottom - es->format_rect.top) / es->line_height;
 return max(1,vlc);
}

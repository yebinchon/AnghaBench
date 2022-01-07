
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int x; scalar_t__ y; } ;
struct TYPE_13__ {scalar_t__ wmode; TYPE_4__* first_char; TYPE_1__ dir; } ;
typedef TYPE_5__ fz_stext_line ;
struct TYPE_10__ {float y; } ;
struct TYPE_14__ {float size; TYPE_2__ origin; } ;
typedef TYPE_6__ fz_stext_char ;
struct TYPE_11__ {float y; } ;
struct TYPE_12__ {TYPE_3__ origin; } ;



__attribute__((used)) static int
detect_super_script(fz_stext_line *line, fz_stext_char *ch)
{
 if (line->wmode == 0 && line->dir.x == 1 && line->dir.y == 0)
  return ch->origin.y < line->first_char->origin.y - ch->size * 0.1f;
 return 0;
}

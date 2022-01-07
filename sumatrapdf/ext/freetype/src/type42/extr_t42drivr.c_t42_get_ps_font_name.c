
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ font_name; } ;
struct TYPE_5__ {TYPE_1__ type1; } ;
typedef TYPE_2__* T42_Face ;



__attribute__((used)) static const char*
  t42_get_ps_font_name( T42_Face face )
  {
    return (const char*)face->type1.font_name;
  }

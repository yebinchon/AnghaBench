
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line_number; } ;


 TYPE_1__ pp_status ;
 int ppy_warning (char*) ;
 int str_startline ;
 scalar_t__ strbuf_idx ;

__attribute__((used)) static void new_string(void)
{




 strbuf_idx = 0;
 str_startline = pp_status.line_number;
}

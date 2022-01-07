
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmdlen; int cmdpos; int cmdspos; scalar_t__ cmdbuff; } ;


 int Columns ;
 scalar_t__ KeyTyped ;
 int MAXCOL ;
 int Rows ;
 TYPE_1__ ccline ;
 int cmdline_charsize (int) ;
 int correct_cmdspos (int,int) ;
 scalar_t__ has_mbyte ;
 int mb_ptr2len (scalar_t__) ;
 int set_cmdspos () ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static void
set_cmdspos_cursor()
{
    int i, m, c;

    set_cmdspos();
    if (KeyTyped)
    {
 m = Columns * Rows;
 if (m < 0)
     m = MAXCOL;
    }
    else
 m = MAXCOL;
    for (i = 0; i < ccline.cmdlen && i < ccline.cmdpos; ++i)
    {
 c = cmdline_charsize(i);







 if ((ccline.cmdspos += c) >= m)
 {
     ccline.cmdspos -= c;
     break;
 }




    }
}

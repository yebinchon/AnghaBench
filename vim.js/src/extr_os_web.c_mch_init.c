
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Columns ;
 int Rows ;
 int out_flush () ;

void
mch_init()
{
    Columns = 80;
    Rows = 24;

    out_flush();
}

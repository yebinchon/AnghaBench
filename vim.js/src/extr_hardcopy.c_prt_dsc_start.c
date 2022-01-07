
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int prt_write_string (char*) ;

__attribute__((used)) static void
prt_dsc_start()
{
    prt_write_string("%!PS-Adobe-3.0\n");
}

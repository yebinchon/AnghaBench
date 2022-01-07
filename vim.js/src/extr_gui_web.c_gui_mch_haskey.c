
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int FAIL ;
 int OK ;
 scalar_t__ vimjs_haskey (char*) ;

int
gui_mch_haskey(char_u *name)
{
    return vimjs_haskey((char*)name) ? OK : FAIL;
}

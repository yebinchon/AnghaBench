
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int FALSE ;
 int current_lnum ;
 int * ml_get_buf (int ,int ,int ) ;
 int syn_buf ;

__attribute__((used)) static char_u *
syn_getcurline()
{
    return ml_get_buf(syn_buf, current_lnum, FALSE);
}

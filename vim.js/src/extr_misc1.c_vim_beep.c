
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_2__ {scalar_t__ starting; scalar_t__ in_use; } ;


 int BELL ;
 int HLF_W ;
 int T_VB ;
 scalar_t__ _ (char*) ;
 int beep_count ;
 scalar_t__ emsg_silent ;
 TYPE_1__ gui ;
 int hl_attr (int ) ;
 int msg_attr (int *,int ) ;
 int msg_source (int ) ;
 int out_char (int ) ;
 int out_str (int ) ;
 int p_debug ;
 scalar_t__ p_vb ;
 int * vim_strchr (int ,char) ;

void
vim_beep()
{
    if (emsg_silent == 0)
    {
 if (p_vb





  )
 {
     out_str(T_VB);
 }
 else
 {
     out_char(BELL);

 }



 if (vim_strchr(p_debug, 'e') != ((void*)0))
 {
     msg_source(hl_attr(HLF_W));
     msg_attr((char_u *)_("Beep!"), hl_attr(HLF_W));
 }
    }
}

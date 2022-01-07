
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ** ps_fontname; } ;


 void* FALSE ;
 int PRT_PS_FONT_BOLDOBLIQUE ;
 int PRT_PS_FONT_ROMAN ;
 int convert_setup (int *,int *,int *) ;
 int fclose (int *) ;
 int prt_conv ;
 void* prt_do_conv ;
 void* prt_file_error ;
 scalar_t__ prt_out_mbyte ;
 int * prt_ps_fd ;
 int * prt_ps_file_name ;
 TYPE_1__ prt_ps_mb_font ;
 int vim_free (int *) ;

void
mch_print_cleanup()
{
    if (prt_ps_fd != ((void*)0))
    {
 fclose(prt_ps_fd);
 prt_ps_fd = ((void*)0);
 prt_file_error = FALSE;
    }
    if (prt_ps_file_name != ((void*)0))
    {
 vim_free(prt_ps_file_name);
 prt_ps_file_name = ((void*)0);
    }
}

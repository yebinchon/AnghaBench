
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EMSG2 (int ,scalar_t__) ;
 int FAIL ;
 int OK ;
 scalar_t__ TRUE ;
 int _ (int ) ;
 int e_notopen ;
 int * mch_fopen (char*,char*) ;
 scalar_t__ p_vfile ;
 scalar_t__ verbose_did_open ;
 int * verbose_fd ;

int
verbose_open()
{
    if (verbose_fd == ((void*)0) && !verbose_did_open)
    {

 verbose_did_open = TRUE;

 verbose_fd = mch_fopen((char *)p_vfile, "a");
 if (verbose_fd == ((void*)0))
 {
     EMSG2(_(e_notopen), p_vfile);
     return FAIL;
 }
    }
    return OK;
}

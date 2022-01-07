
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EMSG (int ) ;
 int FALSE ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ p_write ;

int
not_writing()
{
    if (p_write)
 return FALSE;
    EMSG(_("E142: File not written: Writing is disabled by 'write' option"));
    return TRUE;
}

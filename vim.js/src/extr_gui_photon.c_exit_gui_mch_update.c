
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int Pt_END ;

__attribute__((used)) static int
exit_gui_mch_update(void *data)
{
    *(int *)data = FALSE;
    return Pt_END;
}

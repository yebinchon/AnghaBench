
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *) ;
 int * lfn_offsets ;
 int lfn_slot ;
 int * lfn_unicode ;

void lfn_reset(void)
{
    if (lfn_unicode)
 free(lfn_unicode);
    lfn_unicode = ((void*)0);
    if (lfn_offsets)
 free(lfn_offsets);
    lfn_offsets = ((void*)0);
    lfn_slot = -1;
}

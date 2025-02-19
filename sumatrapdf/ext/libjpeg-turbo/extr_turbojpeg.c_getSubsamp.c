
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* j_decompress_ptr ;
struct TYPE_5__ {int num_components; TYPE_1__* comp_info; } ;
struct TYPE_4__ {int h_samp_factor; int v_samp_factor; } ;


 int NUMSUBOPT ;
 int* pixelsize ;
 int* tjMCUHeight ;
 int* tjMCUWidth ;

__attribute__((used)) static int getSubsamp(j_decompress_ptr dinfo)
{
 int retval=-1, i, k;
 for(i=0; i<NUMSUBOPT; i++)
 {
  if(dinfo->num_components==pixelsize[i])
  {
   if(dinfo->comp_info[0].h_samp_factor==tjMCUWidth[i]/8
    && dinfo->comp_info[0].v_samp_factor==tjMCUHeight[i]/8)
   {
    int match=0;
    for(k=1; k<dinfo->num_components; k++)
    {
     if(dinfo->comp_info[k].h_samp_factor==1
      && dinfo->comp_info[k].v_samp_factor==1)
      match++;
    }
    if(match==dinfo->num_components-1)
    {
     retval=i; break;
    }
   }
  }
 }
 return retval;
}

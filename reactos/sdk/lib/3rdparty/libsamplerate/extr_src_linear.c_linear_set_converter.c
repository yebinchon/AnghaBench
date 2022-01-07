
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int channels; int linear_magic_marker; } ;
struct TYPE_7__ {int channels; int (* reset ) (TYPE_1__*) ;void* vari_process; void* const_process; TYPE_2__* private_data; } ;
typedef TYPE_1__ SRC_PRIVATE ;
typedef TYPE_2__ LINEAR_DATA ;


 int LINEAR_MAGIC_MARKER ;
 int SRC_ERR_BAD_CONVERTER ;
 int SRC_ERR_MALLOC_FAILED ;
 int SRC_ERR_NO_ERROR ;
 int SRC_LINEAR ;
 TYPE_2__* calloc (int,int) ;
 int free (TYPE_2__*) ;
 int linear_reset (TYPE_1__*) ;
 void* linear_vari_process ;

int
linear_set_converter (SRC_PRIVATE *psrc, int src_enum)
{ LINEAR_DATA *priv = ((void*)0) ;

 if (src_enum != SRC_LINEAR)
  return SRC_ERR_BAD_CONVERTER ;

 if (psrc->private_data != ((void*)0))
 { free (psrc->private_data) ;
  psrc->private_data = ((void*)0) ;
  } ;

 if (psrc->private_data == ((void*)0))
 { priv = calloc (1, sizeof (*priv) + psrc->channels * sizeof (float)) ;
  psrc->private_data = priv ;
  } ;

 if (priv == ((void*)0))
  return SRC_ERR_MALLOC_FAILED ;

 priv->linear_magic_marker = LINEAR_MAGIC_MARKER ;
 priv->channels = psrc->channels ;

 psrc->const_process = linear_vari_process ;
 psrc->vari_process = linear_vari_process ;
 psrc->reset = linear_reset ;

 linear_reset (psrc) ;

 return SRC_ERR_NO_ERROR ;
}

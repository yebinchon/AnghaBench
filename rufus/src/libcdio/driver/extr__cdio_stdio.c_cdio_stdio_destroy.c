
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CdioDataSource_t ;


 int cdio_stream_destroy (int *) ;

void
cdio_stdio_destroy(CdioDataSource_t *p_obj)
{
  cdio_stream_destroy(p_obj);
}

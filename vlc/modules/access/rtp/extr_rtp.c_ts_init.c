
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int demux_t ;


 void* stream_init (int *,char*) ;

__attribute__((used)) static void *ts_init (demux_t *demux)
{
    return stream_init (demux, "ts");
}

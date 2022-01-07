
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8 ;
struct TYPE_4__ {int * textcache; } ;
struct TYPE_5__ {TYPE_1__ cache; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef int DATABLOB ;



DATABLOB *
cache_get_text(RDPCLIENT * This, uint8 cache_id)
{
 DATABLOB *text;

 text = &This->cache.textcache[cache_id];
 return text;
}

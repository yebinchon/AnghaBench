
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint8 ;
struct TYPE_7__ {int size; int * data; } ;
struct TYPE_5__ {TYPE_3__* textcache; } ;
struct TYPE_6__ {TYPE_1__ cache; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef TYPE_3__ DATABLOB ;


 int free (int *) ;
 void* malloc (int) ;
 int memcpy (int *,void*,int) ;

void
cache_put_text(RDPCLIENT * This, uint8 cache_id, void *data, int length)
{
 DATABLOB *text;
 void * p = malloc(length);

 if(p == ((void*)0))
  return;

 text = &This->cache.textcache[cache_id];
 if (text->data != ((void*)0))
  free(text->data);
 text->data = p;
 text->size = length;
 memcpy(text->data, data, length);
}

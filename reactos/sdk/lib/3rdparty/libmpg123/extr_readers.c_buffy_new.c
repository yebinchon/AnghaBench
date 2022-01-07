
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffy {size_t realsize; int * next; scalar_t__ size; int * data; } ;


 int free (struct buffy*) ;
 void* malloc (int) ;

__attribute__((used)) static struct buffy* buffy_new(size_t size, size_t minsize)
{
 struct buffy *newbuf;
 newbuf = malloc(sizeof(struct buffy));
 if(newbuf == ((void*)0)) return ((void*)0);

 newbuf->realsize = size > minsize ? size : minsize;
 newbuf->data = malloc(newbuf->realsize);
 if(newbuf->data == ((void*)0))
 {
  free(newbuf);
  return ((void*)0);
 }
 newbuf->size = 0;
 newbuf->next = ((void*)0);
 return newbuf;
}

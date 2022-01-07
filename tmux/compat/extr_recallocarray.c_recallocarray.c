
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENOMEM ;
 size_t MUL_NO_OVERFLOW ;
 size_t SIZE_MAX ;
 void* calloc (size_t,size_t) ;
 int errno ;
 int explicit_bzero (void*,size_t) ;
 int free (void*) ;
 scalar_t__ getpagesize () ;
 void* malloc (size_t) ;
 int memcpy (void*,void*,size_t) ;
 int memset (char*,int ,size_t) ;

void *
recallocarray(void *ptr, size_t oldnmemb, size_t newnmemb, size_t size)
{
 size_t oldsize, newsize;
 void *newptr;

 if (ptr == ((void*)0))
  return calloc(newnmemb, size);

 if ((newnmemb >= MUL_NO_OVERFLOW || size >= MUL_NO_OVERFLOW) &&
     newnmemb > 0 && SIZE_MAX / newnmemb < size) {
  errno = ENOMEM;
  return ((void*)0);
 }
 newsize = newnmemb * size;

 if ((oldnmemb >= MUL_NO_OVERFLOW || size >= MUL_NO_OVERFLOW) &&
     oldnmemb > 0 && SIZE_MAX / oldnmemb < size) {
  errno = EINVAL;
  return ((void*)0);
 }
 oldsize = oldnmemb * size;





 if (newsize <= oldsize) {
  size_t d = oldsize - newsize;

  if (d < oldsize / 2 && d < (size_t)getpagesize()) {
   memset((char *)ptr + newsize, 0, d);
   return ptr;
  }
 }

 newptr = malloc(newsize);
 if (newptr == ((void*)0))
  return ((void*)0);

 if (newsize > oldsize) {
  memcpy(newptr, ptr, oldsize);
  memset((char *)newptr + oldsize, 0, newsize - oldsize);
 } else
  memcpy(newptr, ptr, newsize);

 explicit_bzero(ptr, oldsize);
 free(ptr);

 return newptr;
}

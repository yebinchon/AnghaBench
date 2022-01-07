
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int fprintf (int ,char*,size_t) ;
 void* malloc (size_t) ;
 int stderr ;

__attribute__((used)) static void *
safe_malloc(size_t size)
{
 void *rv = malloc(size);
 if (rv == ((void*)0)) {
  (void) fprintf(stderr, "ERROR; failed to allocate %zu bytes\n",
      size);
  abort();
 }
 return (rv);
}

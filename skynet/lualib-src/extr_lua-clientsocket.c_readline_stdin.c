
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct queue {char** queue; size_t tail; scalar_t__ head; int lock; } ;


 scalar_t__ QUEUE_SIZE ;
 int exit (int) ;
 int feof (int ) ;
 int * fgets (char*,int,int ) ;
 char* malloc (int) ;
 int memcpy (char*,char*,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stdin ;
 int strlen (char*) ;

__attribute__((used)) static void *
readline_stdin(void * arg) {
 struct queue * q = arg;
 char tmp[1024];
 while (!feof(stdin)) {
  if (fgets(tmp,sizeof(tmp),stdin) == ((void*)0)) {

   exit(1);
  }
  int n = strlen(tmp) -1;

  char * str = malloc(n+1);
  memcpy(str, tmp, n);
  str[n] = 0;

  pthread_mutex_lock(&q->lock);
  q->queue[q->tail] = str;

  if (++q->tail >= QUEUE_SIZE) {
   q->tail = 0;
  }
  if (q->head == q->tail) {

   exit(1);
  }
  pthread_mutex_unlock(&q->lock);
 }
 return ((void*)0);
}

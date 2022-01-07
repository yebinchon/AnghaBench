
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int acceptor ;
 int mevent_dispatch () ;
 int pthread_create (int *,int *,int ,int *) ;

int
main(void)
{
 pthread_t tid;

 pthread_create(&tid, ((void*)0), acceptor, ((void*)0));

 mevent_dispatch();

 return (0);
}

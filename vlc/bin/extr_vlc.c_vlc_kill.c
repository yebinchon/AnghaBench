
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int SIGTERM ;
 int getpid () ;
 int kill (int ,int ) ;
 int pthread_kill (int ,int ) ;

__attribute__((used)) static void vlc_kill (void *data)
{

    pthread_t *ps = data;

    pthread_kill (*ps, SIGTERM);




}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sa_lock; } ;
typedef TYPE_1__ sa_handle_t ;


 int MUTEX_DEFAULT ;
 int mutex_init (int *,int *,int ,int *) ;

__attribute__((used)) static int
sa_cache_constructor(void *buf, void *unused, int kmflag)
{
 sa_handle_t *hdl = buf;

 mutex_init(&hdl->sa_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b_evict_lock; } ;
typedef TYPE_1__ arc_buf_t ;


 int ARC_SPACE_HDRS ;
 int MUTEX_DEFAULT ;
 int arc_space_consume (int,int ) ;
 int bzero (TYPE_1__*,int) ;
 int mutex_init (int *,int *,int ,int *) ;

__attribute__((used)) static int
buf_cons(void *vbuf, void *unused, int kmflag)
{
 arc_buf_t *buf = vbuf;

 bzero(buf, sizeof (arc_buf_t));
 mutex_init(&buf->b_evict_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 arc_space_consume(sizeof (arc_buf_t), ARC_SPACE_HDRS);

 return (0);
}

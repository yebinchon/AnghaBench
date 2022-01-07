
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_t ;


 int B_FALSE ;
 int ZIO_TASKQ_ISSUE ;
 int zio_taskq_dispatch (int *,int ,int ) ;

__attribute__((used)) static zio_t *
zio_issue_async(zio_t *zio)
{
 zio_taskq_dispatch(zio, ZIO_TASKQ_ISSUE, B_FALSE);

 return (((void*)0));
}

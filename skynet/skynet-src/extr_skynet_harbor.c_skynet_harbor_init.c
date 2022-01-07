
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int HANDLE_REMOTE_SHIFT ;
 unsigned int HARBOR ;

void
skynet_harbor_init(int harbor) {
 HARBOR = (unsigned int)harbor << HANDLE_REMOTE_SHIFT;
}

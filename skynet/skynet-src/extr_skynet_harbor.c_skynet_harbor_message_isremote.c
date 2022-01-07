
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int HANDLE_MASK ;
 int HARBOR ;
 int assert (int) ;

int
skynet_harbor_message_isremote(uint32_t handle) {
 assert(HARBOR != ~0);
 int h = (handle & ~HANDLE_MASK);
 return h != HARBOR && h !=0;
}

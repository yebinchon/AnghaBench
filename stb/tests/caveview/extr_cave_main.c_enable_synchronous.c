
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GL_DEBUG_OUTPUT_SYNCHRONOUS_ARB ;
 int glEnable (int ) ;
 int is_synchronous_debug ;

void enable_synchronous(void)
{
   glEnable(GL_DEBUG_OUTPUT_SYNCHRONOUS_ARB);
   is_synchronous_debug = 1;
}

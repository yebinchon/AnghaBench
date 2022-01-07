
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 scalar_t__ remote_debug ;
 int stderr ;

void debug_error (char* format )
{
  if (remote_debug)
    fprintf (stderr, format );
}

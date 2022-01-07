
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int fputs (int ,int ) ;
 int stderr ;

__attribute__((used)) static int
gamma_dummy_start(void *state)
{
 fputs(_("WARNING: Using dummy gamma method! Display will not be affected by this gamma method.\n"), stderr);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _got_hup ;

__attribute__((used)) static void
_hup_handler(int signum)
{
 _got_hup = 1;
}

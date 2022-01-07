
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int extension_current_state () ;
 int extension_set_state (int ) ;

__attribute__((used)) static bool
extension_update_state()
{
 return extension_set_state(extension_current_state());
}

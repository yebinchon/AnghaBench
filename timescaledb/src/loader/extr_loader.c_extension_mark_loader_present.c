
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RENDEZVOUS_LOADER_PRESENT_NAME ;
 void** find_rendezvous_variable (int ) ;
 int loader_present ;

__attribute__((used)) static void
extension_mark_loader_present()
{
 void **presentptr = find_rendezvous_variable(RENDEZVOUS_LOADER_PRESENT_NAME);

 *presentptr = &loader_present;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsresult ;
struct TYPE_3__ {int editor_controller; } ;
typedef TYPE_1__ NSContainer ;


 int ERR (char*,int ,int ) ;
 scalar_t__ NS_FAILED (int ) ;
 int debugstr_a (char const*) ;
 int nsIController_DoCommand (int ,char const*) ;

__attribute__((used)) static void do_ns_editor_command(NSContainer *This, const char *cmd)
{
    nsresult nsres;

    if(!This->editor_controller)
        return;

    nsres = nsIController_DoCommand(This->editor_controller, cmd);
    if(NS_FAILED(nsres))
        ERR("DoCommand(%s) failed: %08x\n", debugstr_a(cmd), nsres);
}

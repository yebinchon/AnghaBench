
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int Param; int (* DeviceCommand ) (int ,size_t) ;int IsEnabled; } ;
typedef TYPE_1__* PPS2_PORT ;
typedef size_t BYTE ;


 int ASSERT (int) ;
 int ControllerConfig ;
 int PS2_CONFIG_AUX_DISABLE ;
 int PS2_CONFIG_KBD_DISABLE ;
 size_t PS2_PORTS ;
 TYPE_1__* Ports ;
 int TRUE ;
 int stub1 (int ,size_t) ;

__attribute__((used)) static VOID PS2SendCommand(BYTE PS2Port, BYTE Command)
{
    PPS2_PORT Port;

    ASSERT(PS2Port < PS2_PORTS);
    Port = &Ports[PS2Port];





    if (PS2Port == 0)
        ControllerConfig &= ~PS2_CONFIG_KBD_DISABLE;
    else
        ControllerConfig &= ~PS2_CONFIG_AUX_DISABLE;

    Port->IsEnabled = TRUE;


    if (Port->DeviceCommand) Port->DeviceCommand(Port->Param, Command);
}

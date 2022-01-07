
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int last_tx_bytes; } ;
typedef TYPE_1__ HttpTxTask ;



int
http_tx_task_get_rate (HttpTxTask *task)
{
    return task->last_tx_bytes;
}

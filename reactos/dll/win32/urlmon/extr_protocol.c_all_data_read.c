
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ Protocol ;


 int FLAG_ALL_DATA_READ ;
 int S_OK ;
 int report_data (TYPE_1__*) ;
 int report_result (TYPE_1__*,int ) ;

__attribute__((used)) static void all_data_read(Protocol *protocol)
{
    protocol->flags |= FLAG_ALL_DATA_READ;

    report_data(protocol);
    report_result(protocol, S_OK);
}

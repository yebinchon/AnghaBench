
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int port_value; void* has_port; } ;
typedef TYPE_2__ parse_data ;
struct TYPE_10__ {int modified_props; TYPE_1__* uri; int port; scalar_t__ has_port; } ;
typedef TYPE_3__ UriBuilder ;
struct TYPE_8__ {int port; scalar_t__ has_port; } ;
typedef int DWORD ;


 int TRACE (char*,TYPE_3__ const*,TYPE_2__*,int ,int ) ;
 void* TRUE ;
 int Uri_HAS_PORT ;

__attribute__((used)) static void setup_port(const UriBuilder *builder, parse_data *data, DWORD flags) {
    if(builder->modified_props & Uri_HAS_PORT) {
        if(builder->has_port) {
            data->has_port = TRUE;
            data->port_value = builder->port;
        }
    } else if(builder->uri && builder->uri->has_port) {
        data->has_port = TRUE;
        data->port_value = builder->uri->port;
    }

    if(data->has_port)
        TRACE("(%p %p %x): Using %u as port for IUri.\n", builder, data, flags, data->port_value);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint16_t ;
struct TYPE_6__ {TYPE_1__* connections; int data_callback_object; int (* data_callback ) (int ,int ,int,int const*,int) ;int onion_callback_object; int (* onion_callback ) (int ,int const*,int) ;int oob_data_callback_object; int (* oob_data_callback ) (int ,int const*,int const*,int ) ;int ping_id; int ping_response_id; int status_callback_object; int (* status_callback ) (int ,int ,int,int) ;int response_callback_object; int (* response_callback ) (int ,int,int *) ;} ;
struct TYPE_5__ {int status; int number; int * public_key; } ;
typedef TYPE_2__ TCP_Client_Connection ;


 int const NUM_RESERVED_PORTS ;







 int crypto_box_PUBLICKEYBYTES ;
 int memcpy (int *,int const*,int) ;
 int send_ping_response (TYPE_2__*) ;
 int stub1 (int ,int,int *) ;
 int stub2 (int ,int ,int,int) ;
 int stub3 (int ,int ,int,int) ;
 int stub4 (int ,int const*,int const*,int ) ;
 int stub5 (int ,int const*,int) ;
 int stub6 (int ,int ,int,int const*,int) ;

__attribute__((used)) static int handle_TCP_packet(TCP_Client_Connection *conn, const uint8_t *data, uint16_t length)
{
    if (length <= 1)
        return -1;

    switch (data[0]) {
        case 128: {
            if (length != 1 + 1 + crypto_box_PUBLICKEYBYTES)
                return -1;

            if (data[1] < NUM_RESERVED_PORTS)
                return 0;

            uint8_t con_id = data[1] - NUM_RESERVED_PORTS;

            if (conn->connections[con_id].status != 0)
                return 0;

            conn->connections[con_id].status = 1;
            conn->connections[con_id].number = ~0;
            memcpy(conn->connections[con_id].public_key, data + 2, crypto_box_PUBLICKEYBYTES);

            if (conn->response_callback)
                conn->response_callback(conn->response_callback_object, con_id, conn->connections[con_id].public_key);

            return 0;
        }

        case 134: {
            if (length != 1 + 1)
                return -1;

            if (data[1] < NUM_RESERVED_PORTS)
                return -1;

            uint8_t con_id = data[1] - NUM_RESERVED_PORTS;

            if (conn->connections[con_id].status != 1)
                return 0;

            conn->connections[con_id].status = 2;

            if (conn->status_callback)
                conn->status_callback(conn->status_callback_object, conn->connections[con_id].number, con_id,
                                      conn->connections[con_id].status);

            return 0;
        }

        case 133: {
            if (length != 1 + 1)
                return -1;

            if (data[1] < NUM_RESERVED_PORTS)
                return -1;

            uint8_t con_id = data[1] - NUM_RESERVED_PORTS;

            if (conn->connections[con_id].status == 0)
                return 0;

            if (conn->connections[con_id].status != 2)
                return 0;

            conn->connections[con_id].status = 1;

            if (conn->status_callback)
                conn->status_callback(conn->status_callback_object, conn->connections[con_id].number, con_id,
                                      conn->connections[con_id].status);

            return 0;
        }

        case 130: {
            if (length != 1 + sizeof(uint64_t))
                return -1;

            uint64_t ping_id;
            memcpy(&ping_id, data + 1, sizeof(uint64_t));
            conn->ping_response_id = ping_id;
            send_ping_response(conn);
            return 0;
        }

        case 129: {
            if (length != 1 + sizeof(uint64_t))
                return -1;

            uint64_t ping_id;
            memcpy(&ping_id, data + 1, sizeof(uint64_t));

            if (ping_id) {
                if (ping_id == conn->ping_id) {
                    conn->ping_id = 0;
                }

                return 0;
            } else {
                return -1;
            }
        }

        case 131: {
            if (length <= 1 + crypto_box_PUBLICKEYBYTES)
                return -1;

            if (conn->oob_data_callback)
                conn->oob_data_callback(conn->oob_data_callback_object, data + 1, data + 1 + crypto_box_PUBLICKEYBYTES,
                                        length - (1 + crypto_box_PUBLICKEYBYTES));

            return 0;
        }

        case 132: {
            conn->onion_callback(conn->onion_callback_object, data + 1, length - 1);
            return 0;
        }

        default: {
            if (data[0] < NUM_RESERVED_PORTS)
                return -1;

            uint8_t con_id = data[0] - NUM_RESERVED_PORTS;

            if (conn->data_callback)
                conn->data_callback(conn->data_callback_object, conn->connections[con_id].number, con_id, data + 1, length - 1);
        }
    }

    return 0;
}

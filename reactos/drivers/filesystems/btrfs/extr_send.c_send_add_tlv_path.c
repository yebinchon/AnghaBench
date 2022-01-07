
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int send_dir ;
struct TYPE_4__ {scalar_t__ datalen; int * data; } ;
typedef TYPE_1__ send_context ;


 int find_path (char*,int *,char*,scalar_t__) ;
 scalar_t__ find_path_len (int *,scalar_t__) ;
 int send_add_tlv (TYPE_1__*,scalar_t__,int *,scalar_t__) ;

__attribute__((used)) static void send_add_tlv_path(send_context* context, uint16_t type, send_dir* parent, char* name, uint16_t namelen) {
    uint16_t len = find_path_len(parent, namelen);

    send_add_tlv(context, type, ((void*)0), len);

    if (len > 0)
        find_path((char*)&context->data[context->datalen - len], parent, name, namelen);
}

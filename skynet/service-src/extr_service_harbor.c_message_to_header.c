
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct remote_message_header {void* session; void* destination; void* source; } ;


 void* from_bigendian (int const) ;

__attribute__((used)) static inline void
message_to_header(const uint32_t *message, struct remote_message_header *header) {
 header->source = from_bigendian(message[0]);
 header->destination = from_bigendian(message[1]);
 header->session = from_bigendian(message[2]);
}

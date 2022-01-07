
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct remote_message_header {int session; int destination; int source; } ;


 int to_bigendian (int *,int ) ;

__attribute__((used)) static inline void
header_to_message(const struct remote_message_header * header, uint8_t * message) {
 to_bigendian(message , header->source);
 to_bigendian(message+4 , header->destination);
 to_bigendian(message+8 , header->session);
}

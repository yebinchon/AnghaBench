
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct socket_server {int time; } ;



void
socket_server_updatetime(struct socket_server *ss, uint64_t time) {
 ss->time = time;
}

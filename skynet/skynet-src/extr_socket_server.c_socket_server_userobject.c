
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_object_interface {int dummy; } ;
struct socket_server {struct socket_object_interface soi; } ;



void
socket_server_userobject(struct socket_server *ss, struct socket_object_interface *soi) {
 ss->soi = *soi;
}

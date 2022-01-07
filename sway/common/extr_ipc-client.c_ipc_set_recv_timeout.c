
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tv ;
struct timeval {int dummy; } ;


 int SOL_SOCKET ;
 int SO_RCVTIMEO ;
 int SWAY_ERROR ;
 int setsockopt (int,int ,int ,struct timeval*,int) ;
 int sway_log_errno (int ,char*) ;

bool ipc_set_recv_timeout(int socketfd, struct timeval tv) {
 if (setsockopt(socketfd, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv)) == -1) {
  sway_log_errno(SWAY_ERROR, "Failed to set ipc recv timeout");
  return 0;
 }
 return 1;
}

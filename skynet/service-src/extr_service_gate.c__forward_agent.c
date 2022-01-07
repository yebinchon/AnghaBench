
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct gate {struct connection* conn; int hash; } ;
struct connection {void* client; void* agent; } ;


 int hashid_lookup (int *,int) ;

__attribute__((used)) static void
_forward_agent(struct gate * g, int fd, uint32_t agentaddr, uint32_t clientaddr) {
 int id = hashid_lookup(&g->hash, fd);
 if (id >=0) {
  struct connection * agent = &g->conn[id];
  agent->agent = agentaddr;
  agent->client = clientaddr;
 }
}

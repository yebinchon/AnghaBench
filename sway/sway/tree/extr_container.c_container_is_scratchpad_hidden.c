
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_container {int workspace; scalar_t__ scratchpad; } ;



bool container_is_scratchpad_hidden(struct sway_container *con) {
 return con->scratchpad && !con->workspace;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_output {int dummy; } ;
struct output_config {int dummy; } ;
typedef int id ;


 struct output_config* get_output_config (char*,struct sway_output*) ;
 int output_get_identifier (char*,int,struct sway_output*) ;

struct output_config *find_output_config(struct sway_output *output) {
 char id[128];
 output_get_identifier(id, sizeof(id), output);
 return get_output_config(id, output);
}

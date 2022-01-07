
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vlc_h2_parse_destroy (void*) ;

__attribute__((used)) static void cleanup_parser(void *data)
{
    vlc_h2_parse_destroy(data);
}

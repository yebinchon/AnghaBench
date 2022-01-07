
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CoreAudio_layout_s {int p_descriptions; } ;


 int free (int ) ;

__attribute__((used)) static inline void CoreAudio_Layout_Clean(struct CoreAudio_layout_s *c)
{
    free( c->p_descriptions );
}

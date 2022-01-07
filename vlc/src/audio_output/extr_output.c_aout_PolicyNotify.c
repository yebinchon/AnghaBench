
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int audio_output_t ;


 int stub1 (int ,char*) ;
 int var_DecInteger (int ,char*) ;
 int var_IncInteger (int ,char*) ;
 int vlc_object_parent (int *) ;

__attribute__((used)) static void aout_PolicyNotify (audio_output_t *aout, bool cork)
{
    (cork ? var_IncInteger : var_DecInteger)(vlc_object_parent(aout), "corks");
}
